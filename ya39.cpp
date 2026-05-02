#include <iostream>
#include <vector>
#include <unordered_map>
using namespace std;

//остаялем только k повторений каждого числа

vector <int> removeDuplicates(const vector <int> &a, int N) {
    if (a.empty()) return {};

    unordered_map <int, int> m;
    vector <int> ans;
    for (int i = 0;  i < a.size(); ++i) {
        if (m[a[i]] < N) {
            ans.push_back(a[i]);
            ++m[a[i]];
        }
        else continue;  // иначе просто пропускаем (удаляем)
    }
    return ans;
}

int main() {
    int n, k;
    cin>>n>>k;
    vector <int> v(n), a;
    for (int i = 0; i < n; ++i) cin>>v[i];
    a = removeDuplicates(v, k);
    for (auto x : a) cout<<x<<" ";
}