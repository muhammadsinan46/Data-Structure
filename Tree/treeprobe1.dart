

class Node {
  int data;
  Node? left, right;

  Node({required this.data});
}

class Tree {
  Node? root;

  void insert(int data) {
    Node newNode = Node(data: data);

    Node? cuNode = root;

    if (cuNode == null) {
      root = newNode;
      return;
    }
    while (true) {
      if (data < cuNode!.data) {
        if (cuNode.left == null) {
          cuNode.left = newNode;
          break;
        }
        cuNode = cuNode.left;
      } else {
        if (cuNode.right == null) {
          cuNode.right = newNode;
          break;
        }
        cuNode = cuNode.right;
      }
    }
  }

 void delete(int data){
  deleteHelper(data, root, null);
 }


void deleteHelper(int data, Node ?cuNode ,Node ?parent){

while(cuNode!=null){
  if(data< cuNode.data){
    parent =cuNode;
    cuNode =cuNode.left;
  }else if(data> cuNode.data){
    parent =cuNode;
    cuNode =cuNode.right;

  }else{
    if(cuNode.left!=null && cuNode.right!=null){
        cuNode.data =getMin(cuNode.right);
        deleteHelper(cuNode.data, cuNode.right, cuNode);
    }else{
      Node ? child= (cuNode.left!=null)? cuNode.left:cuNode.right;
      if(parent==null){
        root =child;
      }else{
        if(parent.left==cuNode){
          parent.left=child;
        }else{
          parent.right =child;
        }
      }
    }
    break;
  }
}

}
int getMin(Node? node){
  if(node!.left==null){
    return node.data;

  }else{
    return getMin(node.left);
  }

}


  void display() {
    displayHelper(root);
  }

  void displayHelper(Node? node) {
    if (node != null) {
      print(node.data);
      displayHelper(node.left);
      displayHelper(node.right);
    }
  }
}

void main(List<String> args) {
  Tree tree = Tree();
  tree.insert(15);
  tree.insert(14);
  tree.insert(17);
  tree.insert(18);
  tree.insert(27);

  tree.delete(15);
  tree.display();
}


