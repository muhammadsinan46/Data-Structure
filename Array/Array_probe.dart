class StringProbe {
  int StringPairs(List<String> words) {
    int count = 0;
    for (int i = 0; i < words.length; i++) {
      for (int j = i + 1; j < words.length; j++) {
        String rev = words[j].split('').reversed.join();

        if (words[i] == words[j] || words[i] == rev) {
          count++;
        }
      }
    }
    return count;
  }
}

void main() {
  StringProbe str = StringProbe();
  List<String> words = ["cd", "ac", "dc", "ca", "zz"];
  print(str.StringPairs(words));
}


