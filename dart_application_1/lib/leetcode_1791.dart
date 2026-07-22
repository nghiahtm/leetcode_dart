// There is an undirected star graph consisting of n nodes labeled from 1 to n. A star graph is a graph where there is one center node and exactly n - 1 edges that connect the center node with every other node.

// You are given a 2D integer array edges where each edges[i] = [ui, vi] indicates that there is an edge between the nodes ui and vi. Return the center of the given star graph.

// Input: edges = [[1,2],[2,3],[4,2]]
// Output: 2
// Explanation: As shown in the figure above, node 2 is connected to every other node, so 2 is the center.
// Example 2:

// Input: edges = [[1,2],[5,1],[1,3],[1,4]]
// Output: 1

class Solution {
  int findCenter(List<List<int>> edges) {
    int center = 0;
    Map<int, int> visit = {};
    for (int u = 0; u < edges.length; u++) {
      for (int v = 0; v < edges[u].length; v++) {
        visit[edges[u][v]] = (visit[edges[u][v]] ?? 0) + 1;
      }
    }
    final max = visit.entries.reduce((a, b) => a.value > b.value ? a : b);

    center = max.key;
    return center;
  }
}

void main(List<String> args) {
  final data = Solution().findCenter([
    [1, 3],
    [2, 3]
  ]);
  print(data);
}
