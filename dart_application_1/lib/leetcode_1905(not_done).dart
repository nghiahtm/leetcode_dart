/*
You are given two m x n binary matrices grid1 and grid2 containing only 0's (representing water) and 1's (representing land). An island is a group of 1's connected 4-directionally (horizontal or vertical). Any cells outside of the grid are considered water cells.

An island in grid2 is considered a sub-island if there is an island in grid1 that contains all the cells that make up this island in grid2.

Return the number of islands in grid2 that are considered sub-islands.

Input: grid1 = [[1,1,1,0,0],[0,1,1,1,1],[0,0,0,0,0],[1,0,0,0,0],[1,1,0,1,1]], grid2 = [[1,1,1,0,0],[0,0,1,1,1],[0,1,0,0,0],[1,0,1,1,0],[0,1,0,1,0]]
Output: 3
Explanation: In the picture above, the grid on the left is grid1 and the grid on the right is grid2.
The 1s colored red in grid2 are those considered to be part of a sub-island. There are three sub-islands.
*/

class Solution {
  int countSubIslands(List<List<int>> grid1, List<List<int>> grid2) {
    int rows = grid2.length;
    int cols = grid2[0].length;
    int count = 0;

    bool dfs(int r, int c) {
      if (r < 0 || r >= rows || c < 0 || c >= cols || grid2[r][c] == 0) {
        return true;
      }
      bool isSubIsland = true;
      // Nếu grid1 là nước tại vị trí này, đảo này không phải là đảo phụ
      if (grid1[r][c] == 0) {
        return false;
      }
      grid2[r][c] = 0;
      isSubIsland = dfs(r, c + 1) && isSubIsland;
      isSubIsland = dfs(r, c - 1) && isSubIsland;
      isSubIsland = dfs(r + 1, c) && isSubIsland;
      isSubIsland = dfs(r - 1, c) && isSubIsland;
      return isSubIsland;
    }

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        if (grid2[r][c] == 1 && dfs(r, c)) {
          count++;
        }
      }
    }
    return count;
  }
}

void main(List<String> args) {
  final data = Solution().countSubIslands([
    [1, 0, 1, 0, 1],
    [1, 1, 1, 1, 1],
    [0, 0, 0, 0, 0],
    [1, 1, 1, 1, 1],
    [1, 0, 1, 0, 1]
  ], [
    [0, 0, 0, 0, 0],
    [1, 1, 1, 1, 1],
    [0, 1, 0, 1, 0],
    [0, 1, 0, 1, 0],
    [1, 0, 0, 0, 1]
  ]);
  print(data);
}
