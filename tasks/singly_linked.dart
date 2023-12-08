

class Node {
  int? data;

  Node? next;

  Node({required this.data});
}

class SingleList {
  Node? head;
  Node? tail;

  void addValue(int data) {
    Node newNode = Node(data: data);

    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  void addBefore(int data, int k) {
    Node newNode = Node(data: data);
    Node? temp = head;
    Node? prev;

    if (head!.data == k) {
      newNode.next = head;
      head = newNode;
    }

    while (temp != null) {
      if (temp.data == k) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }
//1,2,3,4,5
    //k=3
    prev!.next = newNode;
    newNode.next = temp;
  }

  void addAfter(int data, int k) {
    Node newNode = Node(data: data);
    Node? temp = head;

    while (temp != null) {
      if (temp.data == k) {
        break;
      }
      temp = temp.next;
    }

    if (tail!.data == k) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp!.next;
    temp.next = newNode;
  }

  //1,2,3,4,5  k=3;
  deleteValue(int k) {
    Node? temp = head;
    Node? prev;

    if (temp != null && temp.data == k) {
      head = temp.next;
      return;
    }

    while (temp != null) {
      if (temp.data == k) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }

    if (temp == tail && tail!.data == k) {
      prev!.next = null;
      prev = tail;
    }
    prev!.next = temp!.next;
  }

  void deleteDup(){
     Node? temp = head;

    while (temp != null) {
      Node? ref = temp;
      while (ref!.next !=null) {
     if(temp.data ==ref.next!.data){
           ref.next = ref.next!.next;
     }else{
      ref = ref.next;

     }
    
      }

      temp = temp.next;
 
    }
  }

  void display() {
    Node? temp = head;

    if (head == null) {
      print("list is empty");
    }

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  SingleList list = SingleList();

  list.addValue(10);
  list.addValue(20);
  list.addValue(30);
  list.addValue(30);
  list.addValue(30);
  list.addValue(40);
  //list.addBefore(500, 30);
  // list.addAfter(700, 40);
 // list.deleteValue(40);

 list.deleteDup();
  list.display();
}
