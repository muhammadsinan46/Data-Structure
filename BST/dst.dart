class Node {
  int data;

  Node? left, right;

  Node({required this.data});
}

class BSTree {
  Node? root;

  void insert(int data) {
    Node? cuNode = root;

    Node newNode = Node(data: data);
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

  bool contains(int data) {
    Node? cuNode = root;
    while (cuNode != null) {
      if (data < cuNode.data) {
        cuNode = cuNode.left;
      } else if (data > cuNode.data) {
        cuNode = cuNode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  int getClose(int target) {
    Node? cuNode = root;

    int closest = cuNode!.data;

    while (cuNode != null) {
      if ((target - closest).abs() < (target - cuNode.data).abs()) {
        closest = cuNode.data;
      }
      if (target < cuNode.data) {
        cuNode = cuNode.left;
      } else if (target > cuNode.data) {
        cuNode = cuNode.right;
      } else {
        break;
      }
    }

    return closest;
  }

  void delete (int data){

    deleteHelper(data, root, null);

  }



  void deleteHelper(int data , Node ? cuNode , Node ? parent){

    while(cuNode!=null){

      if(data< cuNode.data){

        parent  = cuNode;
        cuNode  = cuNode.left;

      }else if(data > cuNode.data){
        parent  = cuNode;
        cuNode = cuNode.right;

      }else{

        if(cuNode.left !=null && cuNode.right!=null){

          cuNode.data  = getMin(cuNode.right);
          deleteHelper(cuNode.data, cuNode.right, cuNode);
        }else{

          Node ? child = (cuNode.left!=null)? cuNode.left:cuNode.right;
          if(parent==null){
            root =child;
          }else{

            if(parent.left ==cuNode){
              parent.left = child;
            }else{
              parent.right = child;
            }
          }

        }
break;
      }
    }

  }

  int getMin(Node ? node){

    if(node!.left!=null){
        return node.data;
    }else{

      return getMin(node.left);
    }
  }
}

void main(){
  BSTree tree= BSTree();

  tree.insert(11);
  tree.insert(6);
  tree.insert(19);
  tree.insert(4);
  tree.insert(67);
  tree.insert(43);
  tree.insert(43);
  tree.insert(8);
  tree.insert(1);
  tree.insert(10);
  tree.insert(43);
  tree.insert(31);
  tree.insert(49);

print(  tree.contains(1));

}
