class Sort {
  List<int> bubble(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      int flag = 0;

      for (int j = 0; j < arr.length - 1 - i; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
        flag = 1;
      }
      if (flag == 0) {
        break;
      }
    }

    return arr;
  }
}

void main() {
  var bubbleSort = Sort();

  List<int> arr = [9, 85, 2, 8, 41, 8, 27, 1, 7, 8, 5, 87];

  print(bubbleSort.bubble(arr));
}



