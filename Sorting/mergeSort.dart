class Merge {
  List<int> mergeSort(List<int> arr) {
    if (arr.length <= 1) {
      return arr;
    }

    int mid = arr.length ~/ 2;

    List<int> leftArr = mergeSort(arr.sublist(0, mid));
    List<int> rightArr = mergeSort(arr.sublist(mid));

    return merge(leftArr, rightArr);
  }

  List<int> merge(List<int> leftArr, List<int> rightArr) {
    List<int> res = [];

    int i = 0;
    int j = 0;
    while (i < leftArr.length && j < rightArr.length) {
      if (leftArr[i] <= rightArr[j]) {
        res.add(leftArr[i]);
        i++;
      } else {
        res.add(rightArr[j]);
        j++;
      }
    }
    while (i < leftArr.length) {
      res.add(leftArr[i]);
      i++;
    }
    while (j < rightArr.length) {
      res.add(rightArr[j]);
      j++;
    }
    return res;
  }
}

void main() {
  var merge = Merge();
  List<int> arr = [24, 36, 1, 4, 5, 74, 77, 89, 7, 9, 13, 14];
  print(merge.mergeSort(arr));
}
