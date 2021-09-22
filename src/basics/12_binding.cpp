#include <iostream>
#include <map>

using namespace std;

struct Entry {
  string name;
  int value;
};

Entry read_entry(istream &is) {
  string s;
  int i;
  is >> s >> i;
  return {s, i};
}

int main() {
  auto e = read_entry(cin);
  cout << "{ " << e.name << " , " << e.value << " }\n";

  auto [n, v] = read_entry(cin);
  cout << "{ " << n << " , " << v << " }\n";
}

void incr(map<string, int> &m) {
  for (auto &[key, value] : m) ++value;
}