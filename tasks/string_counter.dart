String compressString(String input) {
  if (input.isEmpty) {
    return input;
  }

  StringBuffer result = StringBuffer();
  int count = 1;

  for (int i = 1; i < input.length; i++) {
    if (input[i] == input[i - 1]) {
      count++;
    } else {
      result.write('$count${input[i - 1]}');
      count = 1;
    }
  }

  // Add the last set of characters
  result.write('$count${input[input.length - 1]}');

  return result.toString();
}

void main() {
  String input = "AAABBC";
  String compressedString = compressString(input);
  print(compressedString); // Output: 3AAA2BB1CC
}
