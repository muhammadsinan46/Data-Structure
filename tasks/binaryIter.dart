class BinaryIt {
  List<int> arr = [];
  int? target;
  BinaryIt(List<int> arr, int target) {
    this.arr = arr;
    this.target = target;
  }
  int binaryIter() {
    int str = 0;
    int end = arr.length - 1;

    while (str <= end) {
      int mid = str + (end - str) ~/ 2;
      if (arr[mid] == target) {
        return mid;
      } else if (target! < arr[mid]) {
        end = mid - 1;
      } else if (target! > arr[mid]) {
        str = mid + 1;
      }
    }

    return -1;
  }
}

void main() {
  List<int> arr = [2, 4, 5, 6, 8, 9, 12];

  int tar = 24;
  BinaryIt list = BinaryIt(arr, tar);

  print(list.binaryIter());
}
