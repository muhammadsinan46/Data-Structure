

class StackArray{
  int? data;
  int ? top;
  int ? size;

List <int?>?arr;
StackArray(int length){
  arr = List.filled(length, null);
  size = length;
  top =-1;
}

  
push(int data){
  if(isFull()){ 
    print("stack is full");

  }else{
top =top!+1;
arr![top!]= data;


  }
}

pop(){
  if(isEmpty()){
    print("stack is empty");
    return null;
  }else{
    int? popElement = arr![top!];
    top = top !-1;
    print(popElement);
    return popElement;

  }
}

void display(){
  if(top ==-1){
    print("list is empty");
  }else{
    print("stack elements are");
    for(int i=top!;i>=0;i--){
      print(arr![i]);
    }
  }
}

  bool isFull() {
    return top == size!- 1;
  }

  bool isEmpty(){
      return top==-1;
  }

}

void main(){
StackArray stackArray =StackArray(10);

stackArray.push(10);
stackArray.push(20);
stackArray.push(30);
stackArray.push(40);
stackArray.push(50);
stackArray.push(60);
stackArray.push(70);
stackArray.push(80);
stackArray.push(90);
stackArray.push(100);
stackArray.display();
stackArray.pop();
stackArray.display();

}