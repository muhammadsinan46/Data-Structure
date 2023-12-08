void main(){


    List <int> arry =[6,5,7,9, 4,0,2];

  int k =10;

Set <int > value ={};
  for(int i=0;i<arry.length;i++){
int num =arry[i];
int re  = k-num;

if(value.contains(re)){
  print(num);
}else{
  value.add(num);
}


  }
}