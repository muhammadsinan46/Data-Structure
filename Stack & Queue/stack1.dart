class Node {
  int? data;
  Node? next;

  Node({this.data});
}

class Stack {
  Node? top;

  void push(int data) {
    Node newNode = Node(data: data);

    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void delete(int target) {
    Node? temp = top;
    Node? prev;

    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }

    prev!.next = temp!.next;
  }
//size of the linked list

  void getSize() {
    Node? temp = top;
    int count = 0;
    while (temp != null) {
      count++;
      temp = temp.next;
    }

    print(count);
  }

  void pop() {
    if (top == null) {
      print("stack is underflow");
    }

    top = top!.next;
  }

  void display() {
    Node? temp = top;

    if (temp == null) {
      print("list is empty");
    }

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Stack stack = Stack();

  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  //stack.delete(20);
  stack.display();

  stack.getSize();
}

