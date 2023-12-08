

class Node{
int? data;
Node ? next;
Node? prev;

Node(int data){

  this.data = data;

}



}

class DoubleLinked{

  Node ? head;
  Node? tail;

  void addValues(int data){
    Node newNode =Node(data);

    if(head==null){
    head = newNode;
    }else{
      tail!.next =newNode;
    }
    tail = newNode;
  }

  void displayNode(){
    if(head ==null){
      print("empty");
    }
    Node ? temp = head;
    while(temp != null){

      print(temp.data);
      temp = temp.next;
    }
  }
  
}

void main(){
  DoubleLinked list = DoubleLinked();

  list.addValues(10);
  list.addValues(20);
  list.addValues(30);
  list.addValues(40);

  list.displayNode();
}
