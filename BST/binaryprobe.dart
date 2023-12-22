import 'dart:io';

class Node {
  int data;

  Node? left, right;
  Node({required this.data});
}

class BinaryTree {
  Node? root;

  void insert(int data) {
    Node newNode = Node(data: data);
    Node? cuNode = root;

    if (cuNode == null) {
      root = newNode;
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

  void inOrder() {
    inOrderHelper(root);
  }

  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      stdout.write(node.data);
      inOrderHelper(node.right);
    }
  }

  void preOrder() {
    preOrderHelper(root);
  }

  void preOrderHelper(Node? node) {
    if (node != null) {
      stdout.write(node.data);
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
      stdout.write(node.data);
    }
  }

  void delete(int data) {
    deleteHelper(data, root, null);
  }

  void deleteHelper(int data, Node? cuNode, Node? parent) {
    while (cuNode != null) {
      if (data < cuNode.data) {
        parent = cuNode;
        cuNode = cuNode.left;
      } else if (data > cuNode.data) {
        parent = cuNode;
        cuNode = cuNode.right;
      } else {
        if (cuNode.left != null && cuNode.right != null) {
          cuNode.data = getMin(cuNode.right);
          deleteHelper(cuNode.data, cuNode.right, cuNode);
        } else {
          Node? child = (cuNode.left == null) ? cuNode.left : cuNode.right;

          if (parent == null) {
            root = child;
          } else {
            if (parent.left == cuNode) {
              parent.left = child;
            } else {
              parent.right = child;
            }
          }
        }
        break;
      }
    }
  }

  int getMin(Node? node) {
    if (node!.left == null) {
      return node.data;
    } else {
      return getMin(node.left);
    }
  }

  int geClose(int target) {
    Node? cuNode = root;
    int closest = cuNode!.data;

    while (cuNode != null) {
      if ((target - closest).abs() < (target - cuNode.data).abs()) {
        closest = cuNode.data;
      }

      if(target< cuNode.data){

        cuNode = cuNode.left;
      }else if(target> cuNode.data){
        cuNode = cuNode.right;
      }else{
        break;
      }
    }
    return closest;
  }
}
