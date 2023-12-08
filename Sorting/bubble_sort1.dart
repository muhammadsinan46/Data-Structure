class Bubble {
  List<int> sorting(List<int> res) {
    for (int i = 0; i < res.length - 1; i++) {
      int flag = 0;

      for (int j = 0; j < res.length - 1 - i; j++) {
        if (res[j] > res[j + 1]) {
          int temp = res[j];

          res[j] = res[j + 1];
          res[j + 1] = temp;
        }
        flag = 1;
      }

      if (flag == 0) {
        break;
      }
    }

    return res;
  }
}

void main() {
  var sorting = Bubble();

  List<int> res = [90, 9, 85, 1, 5, 85, 41, 4, 58, 20, 1];

  print(sorting.sorting(res));
}

