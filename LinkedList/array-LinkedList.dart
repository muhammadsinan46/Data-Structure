class Node {
  int? data;
  Node? next;
  Node({required this.data});
}

class ArrayLinked {
  Node? head;
  Node? tail;

  void addValues(int data) {
    Node addNode = Node(data: data);

    if (head == null) {
      head = addNode;
    } else {
      tail!.next = addNode;
    }
    tail = addNode;
    
  }

  void convertNode(List list){

    for(int i=0;i<list.length;i++){

      addValues(list[i]);
    }

  }

  void displayNode(){
    Node? temp =head;

    if(head==null){
      print("empty");
    }else{
      while(temp!=null){
        print(temp.data);
        temp =temp.next;
      }
    }
  }
  
}
void main(){
  ArrayLinked list =ArrayLinked();

  List<int> array =[2,3,4,5,6,7,8,89,200];

  list.convertNode(array);
  list.displayNode();
}