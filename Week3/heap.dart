class MinHeap {
  List<int> heap = [];

  MinHeap(List<int> arr) {
    build(arr);
  }

  void build(List<int> arr) {
    heap = arr;
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int cuIdx) {
    int endIdx = heap.length - 1;
    int leftIdx = leftChild(cuIdx);

    while (leftIdx <= endIdx) {
      int rightIdx = rightChild(cuIdx);
      int idxToShift;

      if (rightIdx <= endIdx && heap[rightIdx] < heap[leftIdx]) {
        idxToShift = rightIdx;
      } else {
        idxToShift = leftIdx;
      }

      if (heap[cuIdx] > heap[idxToShift]) {
        swap(heap, cuIdx, idxToShift);
        cuIdx = idxToShift;
        idxToShift = leftChild(cuIdx);
      } else {
        return;
      }
    }
  }

 void  shiftUp(int cuIdx) {
    int parentidx = parent(cuIdx);
    while    (cuIdx > 0 && heap[parentidx] > heap[cuIdx]) {
      swap(heap, cuIdx, parentidx);
      cuIdx = parentidx;
      parentidx = parent(cuIdx);
    }
  }

  int parent(int i) {
    return (1 - i) ~/ 2;
  }

  int leftChild(int i) {
    return 2 * i + 1;
  }

  int rightChild(int i) {
    return 2 * i + 2;
  }

 void insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  void delete() {
    swap(heap, 0, heap.length - 1);
    heap.remove(heap.length - 1);
    shiftDown(0);
  }

  void swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

  void display() {
    for (int i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}

void main() {
  List<int> arr = [8, 7, 5, 9];
  MinHeap heap = MinHeap(arr);

  heap.insert(5);
  heap.insert(8);
  heap.insert(4);
  heap.insert(16);

  heap.display();
}
