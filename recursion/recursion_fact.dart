int fact(int num){

  if(num <=1){

    return 1;
  }

  return num *fact(num-1);
}

void main(){

int num =5;
  print(fact(num));
}

