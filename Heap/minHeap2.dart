class MinHeap{

  List<int> heap =[];

  MinHeap(List<int> arr){
    build(arr);
  }

  void build(List<int> arr){
    heap = arr;
    for(int i=parent(heap.length-1);i>=0;i--){
      shiftDown(i);
    }


  }

  void shiftDown(int cuIdx){
    int endIdx = heap.length -1;
    int leftIdx = leftChild(cuIdx);

    while(leftIdx<=endIdx){
      int rightIdx = rightChild(cuIdx);
      int idxtoShift ;

      if(leftIdx<=rightIdx && heap[rightIdx]<heap[leftIdx]){

        idxtoShift =leftIdx;
      }else{
        idxtoShift = rightIdx;
      }

      if(heap[cuIdx]> heap[idxtoShift]){
        swap(heap, cuIdx, idxtoShift);
        cuIdx = idxtoShift;
        leftIdx =leftChild(cuIdx);
        
      }else{
        return;
      }
    }

  }
  void shiftUp(int cuIdx){
    int parentIdx =parent(cuIdx);

    while(cuIdx>0 && heap[parentIdx]>heap[cuIdx]){
      swap(heap, cuIdx, parentIdx);
      cuIdx = parentIdx;
      parentIdx =parent(cuIdx);
    }

  }
  void insert(int value){
    heap.add(value);
    shiftUp(heap.length-1);

  }
  void remove(){
    swap(heap, 0, heap.length-1);
    heap.remove(heap.length-1);
    shiftDown(0);

  }

  int parent(int i){
    return (i-1)~/2;
  }
  int leftChild(int i){
    return 2*i+1;
  }
  int rightChild(int i){
    return 2*i+2;
  }

  void display(){

  }
void swap(List<int> arr , int i ,int j){
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
}

void main(){

}