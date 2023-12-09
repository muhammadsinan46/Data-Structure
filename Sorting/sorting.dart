class Bubble {
  List<int> sort(List<int> my_list) {


    for(int i=1;i<my_list.length;i++){

      int cuIndex = i;

      int j= i-1;

      while(j>=0 && my_list[j]>cuIndex){
        my_list[j+1]= my_list[j];
        j--;

        
      }
      my_list[j+1] = cuIndex;

   

    }

    return my_list;
  }
}

void main() {
  var bu = Bubble();
  List<int> my_list = [64, 34, 25, 12, 22, 11, 90];
  print(bu.sort(my_list));
}
