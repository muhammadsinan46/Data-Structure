import 'dart:collection';

class TrieNode {
  HashMap children = HashMap();
}

class Trie {
  TrieNode root = TrieNode();
  String end = "*";

  Trie(String str) {
    populateSuffixTrie(str);
  }
  void populateSuffixTrie(String str) {
    for (int i = 0; i < str.length; i++) {
      insertSubstringAt(i, str);
    }
  }

  void insertSubstringAt(int index, String str) {
    TrieNode temp = root;

    for (int i = index; i < str.length; i++) {
      if (!temp.children.containsKey(str[i])) {
        TrieNode newNode = TrieNode();
        temp.children[str[i]] = newNode;
      }
      temp = temp.children[str[i]];
    }
    temp.children[end] = TrieNode();
  }

  bool contains(String str) {
    TrieNode temp = root;

    for (int i = 0; i < str.length; i++) {

    if(  temp.children[str[i]] ==null)
      if (!temp.children.containsKey(str[i])) {
        return false;
      }
      temp = temp.children[str[i]];
    }

    return temp.children.containsKey(end);
  }
}

void main() {
  Trie newTrie = Trie("farhan");

  print(newTrie.contains("arhan"));
}
