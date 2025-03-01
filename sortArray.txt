void sortArray(List<int> arr) {
  List<int> oddNumbers = [], evenNumbers = [];

  for (int num in arr) {
    if (num % 2 == 0) {
      evenNumbers.add(num);
    } else {
      oddNumbers.add(num);
    }
  }

  oddNumbers.sort();
  evenNumbers.sort((a, b) => b.compareTo(a));

  int oddIndex = 0, evenIndex = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      arr[i] = evenNumbers[evenIndex++];
    } else {
      arr[i] = oddNumbers[oddIndex++];
    }
  }

  print(arr.join(' '));
}

void main() {
  sortArray([5, 8, 11, 6, 2, 1, 7]);
  sortArray([9, 4, 3, 10, 15, 2]);
}
