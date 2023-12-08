class ArrayProbe {
  List<List<int>> minDiff(List<int> arr) {
    List<List<int>> mindifference = [];

    int size = arr.length;
    arr.sort();
    int mindiff = arr[size - 1] - arr[0];

    for (int i = 1; i < size; i++) {
      int diff = arr[i] - arr[i - 1];

      if (diff < mindiff) {
        mindiff = diff;
        mindifference = [
          [arr[i - 1], arr[i]]
        ];
      } else if (diff == mindiff) {
        mindifference.add([arr[i - 1], arr[i]]);
      }
    }

    return mindifference;
  }
}

void main() {
  ArrayProbe sol = ArrayProbe();
  List<int> arr = [1, 3, 6, 10, 15];
  print(sol.minDiff(arr));
}
