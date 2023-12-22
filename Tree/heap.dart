

class Heap{
  List<int> heap =[];

  Heap(List<int> arr){

    buildHeap(arr);
  }

  void buildHeap(List <int> arr){
    heap = arr;
    for(int i=parent(arr.length-1);i>=0;i--){
      shiftDown(i);
    }

  }

  shiftDown(int cuIdx){
    int endIdx = heap.length-1;
    int leftIdx = leftChild(cuIdx);
    while(leftIdx<=endIdx){
      int rightIdx = rightChild(cuIdx);
      int idxToShift;

      if(rightIdx<= endIdx&& heap[rightIdx]< heap[leftIdx] ){
        idxToShift = rightIdx;
      }else{
        idxToShift = leftIdx;
      }
      if(heap [cuIdx]> heap[idxToShift]){
        swap(heap, cuIdx, idxToShift);
        cuIdx = idxToShift;
        idxToShift = leftChild(cuIdx);

      }else{
        return;
      }

    }

  }
  shiftUp(int cuIdx){
    int parentIdx = parent(cuIdx);
    while(cuIdx> 0 && heap[parentIdx]> heap[cuIdx]){
      swap(heap, cuIdx, parentIdx);
      cuIdx = parentIdx ;
      parentIdx =parent(cuIdx);
    }

  }

  void remove(int data){
      swap(heap, 0, heap.length-1);
      heap.remove(heap.length-1);
      shiftDown(0);
  }

  void insert(int data){
    heap.add(data);
    shiftUp(heap.length-1);

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
   void  swap(List arr, int i , int j){
      int temp =arr[i];
      arr[i] =arr[j];
      arr[j] = temp;

    }

    void display(){
      for(int i=0;i<heap.length;i++){
        print(heap[i]);
      }
    }
  List<int> heapSort() {
    List<int> sortedArray = heap;
    while (heap.isNotEmpty) {
      remove(heap[0]);
      sortedArray.insert(0, heap.last);
    }
    return sortedArray;
  }
}
    

void main(){

  List<int> arr = [9,5,8,4];
  Heap heap =Heap(arr);

  //heap.display();
  heap.insert(18);
  heap.insert(1);
  heap.insert(16);
  
print(  heap.heapSort());
  heap.display();
    
}

