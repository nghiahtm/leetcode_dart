// You are given row x col grid representing a map where grid[i][j] = 1 represents land and grid[i][j] = 0 represents water.

// Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).

// The island doesn't have "lakes", meaning the water inside isn't connected to the water around the island. One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

// Input: grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
// Output: 16
// Explanation: The perimeter is the 16 yellow stripes in the image above.
// Example 2:

// Input: grid = [[1]]
// Output: 4
// Example 3:

// Input: grid = [[1,0]]
// Output: 4

class Solution {
  int islandPerimeter(List<List<int>> grid) {
    int permitmeter = 0;
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[i].length; j++) {
        if (grid[i][j] == 0) {
          continue;
        }
        permitmeter += 4;
        int? up = i - 1 < 0 ? null : i - 1;
        int? down = i + 1 == grid.length ? null : i + 1;
        int? left = j - 1 < 0 ? null : j - 1;
        int? right = j + 1 == grid[i].length ? null : j + 1;

        if (right != null && grid[i][right] == 1) {
          permitmeter -= 1;
        }
        if (left != null && grid[i][left] == 1) {
          permitmeter -= 1;
        }
        if (up != null && grid[up][j] == 1) {
          permitmeter -= 1;
        }
        if (down != null && grid[down][j] == 1) {
          permitmeter -= 1;
        }
      }
    }
    return permitmeter;
  }
}

void main(List<String> args) {
  final data = Solution().islandPerimeter([
    [0, 1, 0, 0],
    [1, 1, 1, 0],
    [0, 1, 0, 0],
    [1, 1, 0, 0]
  ]);
  print(data);
}
