class Insertion1 {
  List<int> insertionSort(List<int> arr) {
    for (int i = 1; i < arr.length; i++) {
      int cu = arr[i];
      int j = i - 1;

      while (j >= 0 && arr[j] > cu) {
        arr[j + 1] = arr[j];
        j--;
      }

      arr[j + 1] = cu;
    }

    return arr;
  }
}

void main() {
  Insertion1 sort = Insertion1();

  List<int> arr = [13, 26, 48, 78, 1, 4, 5, 0];
  List<int> res = sort.insertionSort(arr);
  print(res);
}
