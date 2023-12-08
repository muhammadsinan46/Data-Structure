class Insertion2 {
  List<int> insertion2(List<int> arr) {
    for (int i = 1; i < arr.length; i++) {
      int k = arr[i];
      int j = i - 1;

      while (j >= 0 && arr[j] > k) {
        arr[j + 1] = arr[j];

        j--;
      }

      arr[j + 1] = k;
    }

    return arr;
  }
}

void main() {
  var insertSort = Insertion2();

  List<int> arr = [7, 7, 8, 5, 41, 2, 94, 125];

  print(insertSort.insertion2(arr));
}



