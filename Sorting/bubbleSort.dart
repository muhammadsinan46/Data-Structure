class Bubble{


  List <int> sort(List <int>arr){

      
int temp =0;
    for(int i=0;i<arr.length-1;i++){

      int flag=0;
      for(int j=0;j<arr.length-1-i;j++){

        if(arr[j]>arr[j+1]){
          temp =arr[j];
          arr[j] =arr[j+1];
          arr[j+1] = temp;
        }
        flag =1;
      }
      if(flag==0){
        break;
      }
    }

    return arr;



  }
}


void main(){

  Bubble sort =Bubble();

  List <int> arr =[12,4,13,8,5,20];

  List <int>  res=sort.sort(arr);

  print(res);
}


