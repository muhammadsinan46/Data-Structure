class Heap3 {
  List<int> heapArray = [];
  Heap3(List<int> arr) {
    build(arr);
  }
  void build(List<int> arr) {
    heapArray = arr;

    for (int i = parent(heapArray.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int cuIdx) {
    int endIdx = heapArray.length - 1;
    int leftIdx = leftChild(cuIdx);

    while (leftIdx <= endIdx) {
      int rightIdx = rightChild(cuIdx);
      int idxToShift;
      if (rightIdx <= endIdx && heapArray[rightIdx] < heapArray[leftIdx]) {
        idxToShift = rightIdx;
      } else {
        idxToShift = leftIdx;
      }
      if (heapArray[cuIdx] > heapArray[idxToShift]) {
        swap(heapArray, cuIdx, idxToShift);
        cuIdx = idxToShift;
        leftIdx = leftChild(cuIdx);
      } else {
        return;
      }
    }
  }

  void shiftUp(int cuIdx) {
    int parentIdx = parent(cuIdx);
    while (cuIdx > 0 && heapArray[parentIdx] > heapArray[cuIdx]) {
      swap(heapArray, cuIdx, parentIdx);
      cuIdx = parentIdx;
      parentIdx = parent(cuIdx);
    }
  }

  void insert(int value) {
    heapArray.add(value);
    shiftUp(heapArray.length - 1);
  }

  void remove() {
    swap(heapArray, 0, heapArray.length - 1);
    heapArray.remove(heapArray.length - 1);
    shiftDown(0);
  }

  int parent(int i) {
    return (i - 1) ~/ 2;
  }

  int leftChild(int i) {
    return 2 * i + 1;
  }

  int rightChild(int i) {
    return 2 * i + 2;
  }

  void swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

  void display() {
    for (int i = 0; i < heapArray.length; i++) {
      print(heapArray[i]);
    }
  }
}

void main() {
  List<int> arr = [8, 7, 91, 45, 25, 23, 1, 5];

  Heap3 heap = Heap3(arr);

  heap.build(arr);

  heap.insert(67);
  heap.display();
}
