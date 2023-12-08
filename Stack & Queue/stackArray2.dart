class ArrayStack{

  List<int> stack =[];
  void push(int data){
    stack.add(data);
  }

  int pop(){
      if(stack.isEmpty){
        throw StateError("lsit is empty");

      }else{
        int lastValue =stack.last;
        stack.removeLast();
        return lastValue;
      }
  }
//peek / top
  void top(){
    if(stack.isEmpty){
      throw StateError("list is empty");
    }else{
      print(stack.last) ;
    }
  }

  bool isEmpty (){
    return stack.isEmpty;
  }

  void display(){
    
    for(int i=0;i<stack.length;i++){
      print(stack[i]);
    }

  }
}

void main(){
  var stack = ArrayStack();


  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.push(50);
  stack.push(60);
  
 // stack.display();
  stack.pop();
  //stack.display();

 stack.top();
}