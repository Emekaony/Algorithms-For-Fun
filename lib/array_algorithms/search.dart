void randomStuff() {
  // here's how u create a fixed size list , essentially an array:
  final List<int> fixedSizeList = List.filled(4, 0);
  // fixedSizeList.add(10); // this operation will fail!
}

bool linearSearch(List<int> nums, int target) {
  return nums.contains(target);
}

bool binarySearch(List<int> nums, int target) {
  // rule of thumb when thinking about indexes: think of all
  // valid indexes inside the array ur working with.
  // this means that the end will be the length-1
  int start = 0;
  int end = nums.length - 1;
  while (start <= end) {
    // use ~ for integer division
    int midPoint = (start + end) ~/ 2;
    if (nums[midPoint] == target) {
      return true;
    }
    if (nums[midPoint] > target) {
      end = midPoint - 1;
    } else {
      start = midPoint + 1;
    }
  }
  return false;
}

void main() {
  List<int> list1 = [1, 3, 5, 7, 9];
  List<int> list2 = [2, 4, 6, 8, 10, 12];
  List<int> list3 = [5, 12, 18, 23, 37, 41, 59, 63, 72, 88, 97];
  List<List<int>> tests = [list1, list2, list3];
  List<int> targets = [1, 12, 41];

  for (int i = 0; i < tests.length; i++) {
    print(binarySearch(tests[i], targets[i]));
  }
}
