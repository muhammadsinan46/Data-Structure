class QuickSort{

  List<int> sorting(List <int> arr){

    partition(arr, 0, arr.length-1);


    return arr;
  }

  void partition(List<int> arr, int str , int end){

    if(str>=end){
      return;
    }

    int pivot = str;
    int left =str+1;

    int right = end;

  
  while(left<=right){
    if(arr[left]>arr[pivot] && arr[right]<arr[pivot]){
      swap(arr, left, right);
      left++;
      right--;

    }

    if(arr[left]<=arr[pivot]){
      left++;
    }
    if(arr[right]>=arr[pivot]){
      right--;
    }
  }

  swap(arr, right, pivot);
  partition(arr, str, right-1);
  partition(arr, right+1, end);
  }

  void swap(List <int> arr, int i, int j){

    int temp =arr[i];
    arr[i] =arr[j];
    arr[j] = temp;
  }
}

void main(){

  QuickSort sort =QuickSort();
  List<int> arr = [14, 48, 9, 85, 41, 1, 41, 5, 70];
  print(sort.sorting(arr));
}