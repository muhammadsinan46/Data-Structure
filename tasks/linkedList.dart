
class Node{

  int? data;
  Node? next;

  Node(int data){
    this.data = data;

  }
}

class SlinkedList{

  Node? head = null;
  Node? tail  = null;

//add value
  void addNode(int data){
    
    Node newNode = Node(data);

    if(head ==null){

      head = newNode;
    }else{
      tail?.next =newNode;
    }
    tail = newNode  ;
  }

  //show value

  void displayNode(){
    if(head ==null){
      print("empty");

      return;
    }
      Node? temp = head;

      while(temp!=null){
        print(temp.data);

        temp =temp.next;
      }
    
  }

  //delete vale
  void deleteNode(int data){

  Node? temp = head;
  Node ? prev;

 // delete first value of linked list
  if(temp!=null && temp.data ==data){

    head =temp.next; 
    return; 
  }


while(temp !=null ){

  if(temp.data == data){
    break;
  }
  prev = temp;
  temp = temp.next;
}

prev!.next = temp!.next;
}
void nextAfter(int nextTo, int data){

  Node newNode = Node(data);
  Node? temp = head;

  while(temp!=null ){
    if(temp.data ==nextTo){
      break;
    }
    temp =temp.next;
  }

  if(temp ==null){
    return;
  }

  if(temp ==tail){
    tail!.next = newNode;
    tail = newNode;
    return;
  }

  newNode.next = temp.next;
  temp.next =newNode;
}

void nextBefore(int target , int data ){

  Node newNode =Node(data);

  Node? prev ;
  Node? temp =head;

  if(temp!.data ==target){
    newNode.next =head;
    head =newNode;

  }

  while(temp!=null){
    if(temp.data ==target){
      break;
    }
    prev =temp;
    temp = temp.next;
  }

  prev!.next=newNode;
  newNode.next =temp;


}
}





main(){

  SlinkedList list =SlinkedList();

  list.addNode(10);
  list.addNode(70);
  list.addNode(100);
  //list.nextAfter(100, 40);
  list.nextBefore(70, 20);

  //list.deleteNode(70);
  list.displayNode(); 


}