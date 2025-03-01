List<List<int>> permuteUnique(List<int> nums) {
  List<List<int>> result = [];
  nums.sort();
  void backtrack(List<int> current, List<bool> used) {
    if (current.length == nums.length) result.add(List.from(current));
    for (int i = 0; i < nums.length; i++) {
      if (used[i] || (i > 0 && nums[i] == nums[i - 1] && !used[i - 1])) continue;
      used[i] = true; current.add(nums[i]); backtrack(current, used);
      current.removeLast(); used[i] = false;
    }
  }
  backtrack([], List.filled(nums.length, false));
  return result;
}

void main() {
  print(permuteUnique([1, 1, 2]));
  print(permuteUnique([1, 2, 3]));
}
