class Sorting {
  
  //bubble sorting

  List<int> bubble(List<int> arr) {
    int? temp;
    int size = arr.length;
    for (int i = 0; i < size - 1; i++) {
      int flag = 0;

      for (int j = 0; j < size - 1 - i; j++) {
        if (arr[j] > arr[j + 1]) {
          temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
          flag = 1;
        }
      }
      if (flag == 0) {
        break;
      }
    }

    return arr;
  }
//selection sorting
  List<int> selection(List<int> arr) {
    int size = arr.length;
    for (int i = 0; i < size - 1; i++) {
      int min = i;
      for (int j = i + 1; j < size; j++) {
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

//insertion sorting
  List<int> insertion(List<int> arr) {
    int size = arr.length;
    for (int i = 0; i < size; i++) {
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


//Quick sorting
  List<int> quick(List<int> arr) {
    quicksortHelper(arr, 0, arr.length - 1);

    return arr;
  }

  void quicksortHelper(List<int> arr, int strIndex, int endIndex) {
    if (strIndex >= endIndex) {
      return;
    }
    int pivot = strIndex;
    int left = strIndex + 1;
    int right = endIndex;
    while (left <= right) {
      if (arr[left] > arr[pivot] && arr[right] < arr[pivot]) {
        swap(arr, left, right);
        left++;
        right--;
      }
      if (arr[left] <= arr[pivot]) {
        left++;
      }
      if (arr[right] >= arr[pivot]) {
        right--;
      }
    }
    swap(arr, right, pivot);
    quicksortHelper(arr, strIndex, right - 1);
    quicksortHelper(arr, right + 1, endIndex);
  }

  void swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

  //Merge Sorting

  List<int> mergeSort(List<int> arr) {
    if (arr.length <= 1) {
      return arr;
    }

    int mid = arr.length ~/ 2;
    List<int> leftArr = mergeSort(arr.sublist(0, mid));
    List<int> rightArr = mergeSort(arr.sublist(mid));

    return merge(leftArr, rightArr);
  }

  List<int> merge(List<int> left, List<int> right) {
    List<int> res = [];
    int i = 0;
    int j = 0;

    while (i < left.length && j < right.length) {
      if (left[i] <= right[j]) {
        res.add(left[i]);
        i++;
      } else {
        res.add(right[j]);
        j++;
      }
    }

    while (i < left.length) {
      res.add(left[i]);
      i++;
    }

    while (j < right.length) {
      res.add(right[j]);
      j++;
    }

    return res;
  }
}

void main() {
  Sorting sort = Sorting();

  List<int> arr = [13, 26, 47, 1, 4, 87, 17, 0];;
  print("Selection sort");
  print(sort.selection(arr));
  print("------------------------------");
  print("Insertion sort");
  print(sort.insertion(arr));
  print("------------------------------");
  print("Bubble sort");
  print(sort.bubble(arr));
  print("------------------------------");
  print("Quick sort");
  print(sort.quick(arr));

  print("------------------------------");
  print("Merge sort");
  print(sort.mergeSort(arr));
}
