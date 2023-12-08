class Quick {
  List<int> sort(List<int> arr) {
    quicksortHelper(arr, 0, arr.length - 1);
    return arr;
  }

  void quicksortHelper(List<int> arr, str, end) {
    if (str >= end) {
      return;
    }

    int pivot = str;
    int left = str + 1;
    int right = end;

    while (left <= right) {
      if (arr[pivot] < arr[left] && arr[pivot] > arr[right]) {
        swap(arr, left, right);
        left++;
        right--;
      }
      if (arr[left]<= arr[pivot]) {
        left++;
      }
      if (arr[right] >= arr[pivot]) {
        right--;
      }
    }
    swap(arr, right, pivot);
    quicksortHelper(arr, str, right - 1);
    quicksortHelper(arr, right + 1, end);
  }

  swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}

void main() {
  var quick = Quick();

  List<int> arr = [14, 48, 9, 85, 41, 1, 41, 5, 70];

  print(quick.sort(arr));
}
