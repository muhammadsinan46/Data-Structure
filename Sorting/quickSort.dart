class Quick {
  List<int> sorting(List<int> arr) {
    partition(arr, 0, arr.length - 1);

    return arr;
  }

  void partition(List<int> arr, str, end) {
    if (str >= end) {
      return;
    }

    int pivot = str;
    int left = str + 1;
    int right = end;

    while (left <= right) {
      if ( arr[pivot]<arr[left] &&  arr[pivot]>arr[right]) {
        swap(arr, left, right);
        left++;
        right--;
      }
      if (arr[left]>= arr[pivot]) {
        left++;
      }
      if (arr[right] <= arr[pivot]) {
        right--;
      }

   
    }
       swap(arr, right, pivot);

      partition(arr, str, right - 1);
      partition(arr, right + 1, end);
  }

swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}

void main() {
  var quck = Quick();
  List<int> arr = [14, 7, 9, 24, 1, 5, 74, 77, 13, 36, 4, 89];

print(quck.sorting(arr));
}
