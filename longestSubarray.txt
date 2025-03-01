int longestSubarrayWithSumK(List<int> arr, int K) {
  int maxLength = 0;
  int sum = 0;
  int left = 0;
  
  for (int right = 0; right < arr.length; right++) {
    sum += arr[right];
    
    while (sum > K) {
      sum -= arr[left];
      left++;
    }
    
    maxLength = max(maxLength, right - left + 1);
  }
  
  return maxLength;
}

int max(int a, int b) => a > b ? a : b;

void main() {
  List<int> arr = [3, 1, 2, 1, 4, 5];
  int K = 7;
  print(longestSubarrayWithSumK(arr, K));  // Output: 4
}
