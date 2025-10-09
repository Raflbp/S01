#include <bits/stdc++.h>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    int numCities;
    if (!(cin >> numCities)) return 0;

    vector<string> cityNames(numCities);
    vector<double> cityHdi(numCities);

    for (int i = 0; i < numCities; i++) {
        cin >> cityNames[i] >> cityHdi[i];
    }

    int numEdges;
    cin >> numEdges;

    vector<vector<pair<int,int>>> adj(numCities);
    for (int i = 0; i < numEdges; i++) {
        int from, to, dist;
        cin >> from >> to >> dist;
        if (from >= 0 && from < numCities && to >= 0 && to < numCities) {
            adj[from].push_back({to, dist});
            adj[to].push_back({from, dist});
        }
    }

    int start, target;
    double minHdi;
    cin >> start >> target >> minHdi;

    // Filter allowed cities by HDI
    vector<char> allowed(numCities, false);
    for (int i = 0; i < numCities; i++) allowed[i] = (cityHdi[i] >= minHdi);

    // If either endpoint is not allowed, unreachable
    if (start < 0 || start >= numCities || target < 0 || target >= numCities || !allowed[start] || !allowed[target]) {
        cout << -1 << "\n";
        return 0;
    }

    const long long INF = LLONG_MAX / 4;
    vector<long long> dist(numCities, INF);
    vector<char> visited(numCities, false);
    priority_queue<pair<long long,int>, vector<pair<long long,int>>, greater<pair<long long,int>>> pq;

    dist[start] = 0;
    pq.push({0, start});

    while (!pq.empty()) {
        auto [d, u] = pq.top(); pq.pop();
        if (visited[u]) continue;
        visited[u] = true;
        if (u == target) break;
        for (auto [v, w] : adj[u]) {
            if (!allowed[v]) continue; // skip disallowed cities
            if (visited[v]) continue;
            long long nd = d + (long long)w;
            if (nd < dist[v]) {
                dist[v] = nd;
                pq.push({nd, v});
            }
        }
    }

    cout << (dist[target] == INF ? -1 : (long long)dist[target]) << "\n";
    return 0;
}


