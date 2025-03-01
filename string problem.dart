String expandString(String input) {
  String result = '';
  int i = 0;

  while (i < input.length) {
    String char = input[i];
    int j = i + 1;
    String numStr = '';
    
    while (j < input.length && input[j].contains(RegExp(r'\d'))) {
      numStr += input[j];
      j++;
    }
    
    int repeatCount = int.parse(numStr);
    result += char * repeatCount;
    i = j;
  }

  return result;
}

void main() {
  print(expandString('a1b10'));  
  print(expandString('b3c6d15'));
}
