class Solution {
//String 
  sortString(String s) {    
      
      List<String > word =s.split("");

      String smallest =word.reduce((value, element)=>value.compareTo(element)<0?value:element);
      print(smallest);




  }
}

void main(){
  Solution sol =Solution();
  String s= "aaaabbbbcccc";
  print(sol.sortString(s));
}