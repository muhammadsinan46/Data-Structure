class Sample{
  void display(){

List<int> a2 = [2, 3, 6, 7, 24,34];
   // print(a2);


  int target = 6;
  int index=a2.indexOf(target);

  for(int i=index;i<a2.length-1;i++){

          a2[i]=a2[i+1];
    
  }
         a2.length--;
       print(a2); 
     
}

}

void main(){
  Sample sa = Sample();

  sa.display();

}