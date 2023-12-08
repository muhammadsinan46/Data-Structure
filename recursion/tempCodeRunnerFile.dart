int sum(int num){

  if(num==1){
    return 1;
  }

  return num+sum(num-1);


}

void main(){

  int num =5;

  print(  sum(num));



}