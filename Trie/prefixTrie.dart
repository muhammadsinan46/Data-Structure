import 'dart:collection';

class TrieNode {
  HashMap child = HashMap();
  bool ? end ;
  TrieNode({this.end});
}

class Trie {
  TrieNode root = TrieNode();

  Insert( String str) {
    TrieNode temp = root;

    for (int i = 0; i < str.length; i++) {
      if (!temp.child.containsKey(str[i])) {
        TrieNode newNode = TrieNode();

        temp.child[str[i]] = newNode;
      }

      temp = temp.child[str[i]];
    }
   // temp.child[end] = TrieNode();
   temp.end=true;
  }

  bool contains(String str) {
    TrieNode temp = root;

    for (int i = 0; i < str.length; i++) {
      if (!temp.child.containsKey(str[i])) {
        return false;
      }

      temp = temp.child[str[i]];
    }

    return true;
  }
}


void main(){
  Trie trie =Trie();

  trie.Insert("farhan");
print(trie.contains("han"));
print(trie.contains("far"));
}
