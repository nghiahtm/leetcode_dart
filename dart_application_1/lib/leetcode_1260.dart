/*    
Given a 2D grid of size m x n and an integer k. You need to shift the grid k times.

In one shift operation:

Element at grid[i][j] moves to grid[i][j + 1].
Element at grid[i][n - 1] moves to grid[i + 1][0].
Element at grid[m - 1][n - 1] moves to grid[0][0].
Return the 2D grid after applying shift operation k times.

Input: grid = [[1,2,3],[4,5,6],[7,8,9]], k = 1
Output: [[9,1,2],[3,4,5],[6,7,8]]
*/

class Solution {
  List<List<int>> shiftGrid(List<List<int>> grid, int k) {
    List<List<int>> gridShift = [...grid];
    int rows = grid.length;
    int cols = grid[0].length;
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        while (k > 0) {
          k--;
        }
      }
    }
    return gridShift;
  }
}
