class StringProbe {
  String reverse() {
    String words = "welcome";

    String res = words.split("").reversed.join();

    return res;
  }
  String replace() {
    String words = "BROTOTYPE";
    String key = "T";

    List<String> word = words.split("");

    for (int i = 0; i < word.length; i++) {
      if (word[i] == key) {
        word[i] = "\$";
      }
    }

    return word.join();
  }

  String toUpper(){
    String words ="brototype";

    words[0].toUpperCase()+words.substring(2);

    return words;
  }
}



void main() {
  StringProbe str = StringProbe();

  print(str.reverse());
  print(str.replace());
  print(str.toUpper());
}
