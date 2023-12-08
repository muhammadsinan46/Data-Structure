class Selection {
  List<int> select(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      int min = i;

      for (int j = i + 1; j < arr.length; j++) {
        if (arr[min] > arr[j]) {
          min = j;
        }
      }

      int temp = arr[min];

      arr[min] = arr[i];

      arr[i] = temp;
    }

    return arr;
  }
}

void main() {
  var select = Selection();

  List<int> arr = [9, 75, 84, 2, 51, 8, 1];
  print(select.select(arr));
}


