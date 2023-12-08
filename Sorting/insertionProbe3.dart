class Insert {
  List<int> insertSort(List<int> nums) {
    for (int i = 1; i < nums.length; i++) {
      int current = nums[i];

      int j = i - 1;

      while (j >= 0 && nums[j] > current) {
        nums[j + 1] = nums[j];
        j--;
      }
      nums[j + 1] = current;
    }

    return nums;
  }
}

void main() {
  var sort = Insert();

  List<int> nums = [240, 145, 12, 785, 198, 54, 0, 68, 982];
  List<int> result = sort.insertSort(nums);

  print(result);
}



