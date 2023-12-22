import 'dart:collection';

class TrieNode {
HashMap child = HashMap();
}

class Trie {
  TrieNode root =TrieNode();
  String end ="*";

  Trie(String str){
    populateSuffix(str);
  }

  populateSuffix(String str){
      for(int i=0;i<str.length;i++){
        
      }
  }

  void insert(int index , String str){
      TrieNode temp =root;

    for(int i=index;i<str.length;i++){
      if(!temp.child.containsKey(str[i])){
        TrieNode newNode =TrieNode();

        temp.child[str[i]] =newNode;
      }
      temp = temp.child[str[i]];
    }

    temp.child[end] =TrieNode();
    


  } 
}