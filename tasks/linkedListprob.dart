class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class SlinkedList {
  Node? head;
  Node? tail;

  //add values

  void addValues(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

//delete values
  void delete(int data) {
    Node? temp = head;
    Node? prev;

    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }

    while (temp != null) {
      if (temp.data == data) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }

    prev!.next = temp!.next;
  }

//display values
  void display() {
    if (head == null) {
      print("empty");
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void addAfter(int data, int target) {
    Node newNode = Node(data);

    if (head == null) {
      print("empty");
    }
    Node? temp = head;

    if (temp == null) {
      return;
    }

    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      temp = temp.next;
    }

    if (temp == tail) {
      temp!.next = newNode;
      tail = newNode;
      return;
    }

    newNode.next = temp!.next;
    temp.next = newNode;
  }

  void addBefore(int data , int target){
    Node newNode =Node(data);

    if(head!.data ==target){

      newNode.next = head;
      head = newNode;

    }

    //1,2,3,4,5  ta =3

    Node? temp =head;
    Node? prev ;
    while(temp !=null){
      if(temp.data ==target){
        break;
      }
      prev =temp;
      temp =temp.next;
    }


    prev!.next = newNode;
    newNode.next =temp;
  }
//2,3,4,4,4,4,5,

  void removeDuplicate(){

    Node? temp =head;

    while(temp!=null){
       Node? ref= temp.next;
      while( ref!=null &&temp.data==ref.data){
          ref = ref.next;
      }

//2,3,3,3,4,5,5
      if(ref==tail && temp.data==ref!.data){
          temp.next =null;
          tail = temp;
      }
      temp.next =ref;
      temp = ref;
    }

  }

  void reverse(){
    Node ? temp = head;
    Node ? ref = head;
    Node? prev;
//1,2,3,4,5
    while(temp!=null){

      ref = ref!.next;
      temp.next  =prev;
      prev =temp;

      temp= ref;
    }
    head = prev;


  }

}

void main() {
  SlinkedList list = SlinkedList();

  list.addValues(2);
  list.addValues(30);
  list.addValues(30);
  list.addValues(13);
  list.addValues(26);
  list.addValues(30);
  list.addValues(45);
  list.addValues(5);
  list.removeDuplicate();
  //list.delete(4);
  //list.addAfter(7, 5);
  //list.addBefore(30, 7);

 // list.reverse();

  list.display();
}
