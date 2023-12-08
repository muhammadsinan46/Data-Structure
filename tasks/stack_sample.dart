class Node {
  int? data;
  Node? next;

  Node({this.data});
}

class StackProbe {
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

  void pop(){

    if(top ==null){
      print("stack underflow");
    }

    top = top!.next;
  }

  void display() {
    Node? temp = top;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }


}



void main() {
  StackProbe stack = StackProbe();

  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.display();
  print("_________________________");

  stack.pop();
  stack.display();
}
