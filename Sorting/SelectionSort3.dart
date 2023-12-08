class Selection3 {
  List<int> selection(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      int small = i;
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[small] > arr[j]) {
          small = j;
        }
      }

      int temp = arr[small];
      arr[small] = arr[i];
      arr[i] = temp;
    }

    return arr;
  }
}

void main() {
  var selectionSort = Selection3();

  List<int> arr = [9, 7, 5, 84, 1, 26, 8];
  List<int> res = selectionSort.selection(arr);
  print(res);
}


