class Node{
  int data;
  Node? left, right;

  Node({required this.data});
}

class Binary{

  Node? root;

  void insert(int data){
    Node newNode =Node(data: data);

    Node ?cuNode = root;

    if(cuNode==null){

      root = newNode;
      return;
    }

    while(true){

      if(data< cuNode!.data){
        if(cuNode.left==null){
          cuNode.left =newNode;
          break;
        }

        cuNode = cuNode.left;

      }else{

        if(cuNode.right ==null){
          cuNode.right =newNode;
          break;
        }
        cuNode =cuNode.right;
      }
    }

  }

  bool isBinary(){

    Node? cuNode =root;
     bool? isTrue;
    while(cuNode!=null){
     
     
        if(cuNode.left!.data < cuNode.data  && cuNode.right!.data > cuNode.data ){
            isTrue=true;
        }else{
             return false;
        }
       
    }
    return isTrue!;
  }
}

void main(){
  Binary binary =Binary();

  binary.insert(15);
  binary.insert(1);
  binary.insert(17);
  binary.insert(4);

  print(binary.isBinary());
}