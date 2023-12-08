

class Node{

  int? data;
  Node? next;

  Node({this.data});
}

class SinglyLinkedLIst{

  Node? head;
  Node? tail;


  void addValues(int data){
    Node newNode =Node(data: data);

    if(head ==null){
      head = newNode;
      
    }else{
      tail!.next = newNode;
    }
  tail = newNode;

  }

 void  addStart(int data){
  Node newNode = Node(data: data);


newNode.next = head;
head = newNode;

  }

  void addEnd(int data){
    Node newNode =Node(data: data);
    tail!.next = newNode;
    tail = newNode;
  }


  void addAfter(int data, int k){
    Node newNode = Node(data: data);

    Node? temp = head;
//1,2,3,4,5 k=4
    while(temp!=null){
      if(temp.data == k){
        break;
      }
      temp  = temp.next;
    }
    if(temp==null){
      return;
    }
    if(temp ==tail){
      tail!.next= newNode;
      tail =newNode;
    return;
    }
    newNode.next = temp.next;
    temp.next = newNode;

    
  }

}