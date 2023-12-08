  
  
  void main(){

  List <int> arry =[1,2,3,4,7,8,10];

  int k =10;

List <int> re =[];

  for(int i=0;i<arry.length-1;i++){ //O(1)

    for(int j=i+1;j<arry.length;j++){ //O(1)

      if(arry[j]+arry[i]==k){ 
        re.add(arry[i]);
        re.add(arry[j]);

      }

    }
  }

  print(re);


  }