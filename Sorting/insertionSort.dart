class Insertion {
  List<int> sort(List<int> arr) {
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
  Insertion sorting = Insertion();

  List<int> arr = [13, 26, 47, 1, 4, 87, 17, 0];

  List<int> res = sorting.sort(arr);

  print(res);
}
