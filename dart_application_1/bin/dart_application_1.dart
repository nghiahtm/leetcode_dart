import 'package:dart_application_1/leetcode_11.dart';

void main(List<String> arguments) {
  final sol = Solution();
  DateTime startTime = DateTime.now();
  int res1 = sol.maxArea([10, 14, 10, 4, 10, 2, 6, 1, 6, 12]);
  DateTime endTime = DateTime.now();
  Duration duration = endTime.difference(startTime);
  print("res1: $res1");
  print('Thời gian thực thi thuật toán: ${duration.inMilliseconds}ms');
}
