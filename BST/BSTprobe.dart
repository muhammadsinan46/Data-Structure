
import 'dart:io';

class Node {
  int data;

  Node? left, right;

  Node({required this.data});
}

class BSTree {
  Node? root;
  void insert(int data) {
    Node newNode = Node(data: data);
    Node? current = root;
    if (current == null) {
      root = newNode;
      return;
    }
    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = newNode;
          break;
        }
        current = current.left;
      } else {
        if (current.right == null) {
          current.right = newNode;
          break;
        }
        current = current.right;
      }
    }
  }

  bool contains(int data) {
    Node? current = root;
    while (current != null) {
      if (data < current.data) {
        current = current.left;
      } else if (data > current.data) {
        current = current.right;
      } else {
        return true;
      }
    }
    return false;
  }

  void inOrder() {
    inOrderHelper(root);
  }

  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      stdout.write("${node.data} ");
      inOrderHelper(node.right);
    }
  }

  void preOrder() {
    preOrderHelper(root);
  }

  void preOrderHelper(Node? node) {
    if (node != null) {
      stdout.write("${node.data} ");
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  void postOrder() {
    postOrderHelper(root);
  }

  void postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      stdout.write("${node.data} ");
    }
  }

int findClose(int target){

  Node ? current = root;
  int closest = current!.data;

while(current!=null){
  if((target-closest).abs() >(target-current.data).abs()){
    closest  = current.data;
  }
  if(target < current.data){
    current = current.left;
  }else if(target > current.data){
    current = current.right;
  }else{
    break;
  }
}

  return closest;
}
}

void main() {
  BSTree tree = BSTree();
  tree.insert(10);
  tree.insert(25);
  tree.insert(19);
  tree.insert(90);
  tree.insert(45);
//print(  tree.contains(75));
//   tree.inOrder();
//   print("\n");
//     tree.preOrder();
//   print("\n");
// tree.postOrder();
tree.findClose(75);
}
