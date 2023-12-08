import 'dart:io';

class Node{
  int? data;
  Node ? next;

  Node({this.data});

}

class Queue{
Node? front ;
Node ? rear;

void enqueue(int data){

  Node newNode =Node(data: data);

  if(rear ==null){
    front = rear = newNode;
    return;
  }

rear!.next = newNode;
rear = newNode;

}

void dequeue(){

if(front ==null){
  print("empty");
}

front  = front!.next;

if(front ==null){
  rear = null;
}

}


void  display(){

  Node? temp = front;

  
  if(temp ==null){
    print("list is empty");
  }

  while(temp!=null){
    stdout.write(temp.data);
     stdout.write(" ");

    temp = temp.next;
  }

 

}

}


void main(){

  Queue queue =Queue();

  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.enqueue(40);

  queue.dequeue();
  queue.display();
}