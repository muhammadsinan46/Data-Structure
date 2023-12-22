class Heap {
  List<int> heapArray = [];

  Heap(List<int> arr) {
    buid(arr);
  }

  buid(List<int> arr) {
    heapArray = arr;

    for (int i = parent(arr.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int cuIdx) {
    int endIdx = heapArray.length - 1;
    int leftidx = leftChild(cuIdx);

    while (leftidx <= endIdx) {
      int rightIdx = rightChild(cuIdx);
      int idxToShift;

      if (rightIdx <= endIdx && heapArray[rightIdx] < heapArray[leftidx]) {
        idxToShift = rightIdx;
      } else {
        idxToShift = leftidx;
      }
      if (heapArray[cuIdx] > heapArray[idxToShift]) {
        swap(heapArray, cuIdx, idxToShift);
        cuIdx = idxToShift;
        leftidx = leftChild(cuIdx);
      } else {
        return;
      }
    }
  }

  void shiftUp(int cuIdx) {
    int parentIdx = parent(cuIdx);
    while (cuIdx > 0 && heapArray[parentIdx] > heapArray[cuIdx]) {
      cuIdx = parentIdx;
      parentIdx = parent(cuIdx);
    }
  }

  void insert(int value) {
    heapArray.add(value);
    shiftUp(heapArray.length - 1);
  }

  void delete() {
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
  List<int> arr = [8, 7, 45, 2, 14, 5, 25];
  Heap heap = Heap(arr);

  heap.buid(arr);

  heap.display();
}
