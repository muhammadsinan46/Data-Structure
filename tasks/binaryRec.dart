class BinaryRec{



  int 
  binaryRec(List<int> arr , int target){

      return binaryHelper(arr, target, 0 , arr.length-1);

}

int binaryHelper(List<int>arr, int tar, int str , int end){

  if(str > end){
    return -1;
  }
  int mid = str +(end-str)~/2;
  if(arr[mid]==tar){
    return mid;
  }else if(arr[mid]> tar){
    return binaryHelper(arr, tar, str, mid-1);
  }else{
    return binaryHelper(arr, tar, mid+1, end);
  }

}

}

void main(){

  List<int> arr =[1,2,3,4,5,6,7,];
  int tar = 14;

  print(BinaryRec().binaryRec(arr, tar));
}

