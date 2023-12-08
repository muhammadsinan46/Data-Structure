int fib(int num ){

  if(num<=1){
    return 1;
  }
  return fib(num-1)+fib(num-2);

}

void main(){
  int num =6;
  print(fib(num));
}
