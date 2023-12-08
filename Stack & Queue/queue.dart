class Node {
  int? data;
  Node? next;

  Node({this.data});
}

class Queue {
  Node? front;
  Node? rear;

  void enQueue(int data) {
    Node newNode = Node(data: data);

    if (front == null) {
      front = rear = newNode;
      return;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  void deQueue() {
    if (front == null) {
      print("list is empty");
    }

    front = front!.next;

    if (front == null) {
      rear = null;
    }
  }

  void display() {
    if (front == null) {
      print("list is empty");
    }

    Node? temp = front;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue queue = Queue();

  queue.enQueue(20);
  queue.enQueue(40);
  queue.enQueue(60);
  queue.enQueue(80);
  queue.display();
  queue.deQueue();
}


