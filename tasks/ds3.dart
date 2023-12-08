void main(){
  List <int> array =[6,7,8,1,2,6,4,6,7,6,8,6];
  int temp =0;
  for(int i=0;i<array.length;i++){
    for(int j=array.length-1;j>i;j--){
      if(array[j]!=6){

        temp =array[i];
        array[i] =array[j];
        array[j] = temp;


      }

    }


  }
  print(array);

}