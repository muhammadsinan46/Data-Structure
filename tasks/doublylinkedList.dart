class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(int data) {
    this.data = data;
  }
}

class DLinkedList {
  Node? head;
  Node? tail;

  void addValues(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
     newNode.prev = tail;
    }
    tail = newNode;
  }

  void display() {
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void revDisplay() {
    Node? temp = tail;

    while (temp != null) {
      print(temp.data);

      temp = temp.prev;
    }
  }

  void delete(int data) {
    Node? temp = head;
//delete if target is head
    if (temp != null) {
      if (temp.data == data) {
        head = temp.next;
        return;
      }
    }

    while (temp != null) {
      if (temp.data == data) {
        break;
      }

      temp = temp.next;
    }

    temp!.prev!.next = temp.next;
  }

  void addAfter(int data, int target) {
    Node newNode = Node(data);
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
      tail!.next = newNode;
      newNode.prev = temp;
      tail = newNode;
      return;
    }

    newNode.next = temp!.next;
    temp.next = newNode;
    newNode.prev = temp;
  }

  void addBefore(int target, int data) {
    Node newNode = Node(data);
    Node? temp = head;

    if (temp!.data == target) {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
      return;
    }
    while (temp != null) {
      if (temp.data == target) {
        break;
      }

      temp = temp.next;
    }

    newNode.next = temp;

    temp!.prev!.next = newNode;
    newNode.prev = temp.prev;
    temp.prev = newNode;
  }

  void removeDuplicate() {
    Node? i = head;
    while (i != null) {
      Node? j = i.next;
      while (j != null && j.data == i.data) {
        j = j.next;
      }
      i.next = j;
      if(j ==tail && i.data ==j!.data){
        tail =i;
        tail!.next = null; 
      }
      i =j;
    }
  }
}

void main() {
  DLinkedList list = DLinkedList();

  list.addValues(20);
  list.addValues(40);
  list.addValues(40);
  list.addValues(40);
  list.addValues(40);
  list.addValues(60);
  list.addValues(80);
  list.addValues(80);
  // list.removeDuplicate();
  // list.addBefore(60, 70);
  // list.display();
  list.revDisplay();
}
