#include <getopt.h>
#include <iostream>
#include <math.h>
#include <stdio.h>
#include <string>
#include <vector>
using namespace std;

struct cache_content { // consider lru
  bool v;
  unsigned int tag;
  unsigned int lasttime;
  //	unsigned int	data[16];
};

const int K = 1024;

void simulate(int cache_size, int block_size, int asso, string &test_file_name,
              int test) {
  FILE *fp = fopen(test_file_name.c_str(), "r"); // read file

  if (!fp) {
    cout << "Test file doesn't exist\n";
    return;
  }

  unsigned int tag, index, x;
  // 2^n*(2^m*(one block size)+(one block size-n-m)+1) is total size in one
  // cache
  // assume asso=2^x,x comes from nature number
  int offset_bit = (int)log2(block_size);
  int line = cache_size >> (offset_bit) / asso; // num of set
  int index_bit = (int)log2(line);//index of set

  cache_content **cache = new cache_content *[line];
  vector<int> instruc_hit;
  vector<int> instruc_miss;
  for (int i = 0; i < line; i++)
    cache[i] = new cache_content[asso];
  cout << "cache line:" << line << endl;
  for (int i = 0; i < line; i++)
    for (int j = 0; j < asso; j++) {
      cache[i][j].v = false; // valid bit //calculated for compulsory miss
      cache[i][j].lasttime = 0;
      cache[i][j].tag = 0;
    }
  unsigned int total = 0, miss = 0;
  while (fscanf(fp, "%x", &x) != EOF) {
    total++;
    cout << hex << x << " ";
    index =
        (x >> offset_bit) & (line - 1);  // line-1==>because from 0 to 2^line-1
    tag = x >> (index_bit + offset_bit); // index get set num
    unsigned int target = 0;
    for (int i = 0; i < asso; i++) { // set check
      if (cache[index][i].v && cache[index][i].tag == tag) {
        cache[index][i].v = true; // hit
        target = i;               // find out
        instruc_hit.push_back(total);
        break;
      } else if (cache[index][i].lasttime < cache[index][target].lasttime) {
        // process replacement
        target = i;
      }
    }
    if (cache[index][target].v == false) {
      // compulsory miss
      miss++;
      instruc_miss.push_back(total);
    } else if (cache[index][target].tag != tag) {
      // conflict/capacity miss
      miss++;
      instruc_miss.push_back(total);
    }
    cache[index][target].lasttime = total;
    cache[index][target].tag = tag;
    cache[index][target].v = true;
  }
  fclose(fp);

  fp = fopen("Result.txt", "a"); // for people read
  // basic information
  fprintf(fp, "Cache size:%d\nBlock size:%d \nAssociativity:%d\n", cache_size,
          block_size, asso);
  // asked information
  fprintf(fp, "Miss rate:%f%%\n", 100.0 * miss / total);
  printf("\nMiss rate:%f%%\n", 100.0 * miss / total);
  fprintf(fp, "Hits instructions:");
  printf("Hits instructions:");
  for (int i = 0; i < instruc_hit.size(); i++) {
    fprintf(fp, "%d", instruc_hit.at(i));
    i != (instruc_hit.size() - 1) ? fprintf(fp, ",") : NULL;
    printf( "%d", instruc_hit.at(i));
    i != (instruc_hit.size() - 1) ? printf(",") : NULL;
  }
  fprintf(fp, "\nMisses instructions:");
  printf("\nMisses instructions:");
  for (int i = 0; i < instruc_miss.size(); i++) {
    fprintf(fp, "%d", instruc_miss.at(i));
    i != (instruc_miss.size() - 1) ? fprintf(fp, ",") : NULL;
    printf("%d", instruc_miss.at(i));
    i != (instruc_miss.size() - 1) ? printf(",") : NULL;
  }
  fprintf(fp, "\n--------------------------------------------\n");
  printf("\n--------------------------------------------\n");
  fclose(fp);
  if (test == 1) {
    fp = fopen("Result_data1.csv", "a"); // for plotting data
    fprintf(fp, "%d,", cache_size/K);
    fprintf(fp, "%d,", block_size);
    fprintf(fp, "%d,", asso);
    fprintf(fp, "%f\n", 100.0 * miss / total);
    fclose(fp);
  }
  else if (test == 2) {
    fp = fopen("Result_data2.csv", "a"); // for plotting data
    fprintf(fp, "%d,", cache_size/K);
    fprintf(fp, "%d,", block_size);
    fprintf(fp, "%d,", asso);
    fprintf(fp, "%f\n", 100.0 * miss / total);
    fclose(fp);
  }
  for (int i = 0; i < line; i++)
    delete[] cache[i];
  delete[] cache;
  instruc_hit.clear();
  instruc_miss.clear();
}

int main(int argc, char **argv) {
  string test_file_name;
  int cache_size = 4;
  int block_size = 16;
  int associativity = 1;
  int current_option;
  while ((current_option = getopt(argc, argv, "f:c:b:a:")) != EOF) {
    switch (current_option) {
    case 'f': {
      test_file_name = string(optarg);
      break;
    }
    case 'c': {
      cache_size = atoi(optarg);
      break;
    }
    case 'b': {
      block_size = atoi(optarg);
      break;
    }
    case 'a': {
      associativity = atoi(optarg);
      break;
    }
    }
  }

  // default simulate 4KB direct map cache with 16B blocks
  simulate(cache_size * K, block_size, associativity, test_file_name,0);
  // test1
  //for (int i = 1; i <= 512; i *= 2)
  //  for (int j = 1; j <= 512; j *= 2)
  //    simulate(i * K, j, 1, test_file_name,1);
  // test2
  //for (int i = 1; i <= 512; i *= 2)
  //  for (int j = 1; j <=32; j *= 2)
  //    simulate(i * K, 32, j, test_file_name,2);
}
