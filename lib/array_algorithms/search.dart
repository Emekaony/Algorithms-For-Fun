import 'dart:isolate';

void randomStuff() {
  // here's how u create a fixed size list , essentially an array:
  // final List<int> fixedSizeList = List.filled(4, 0);
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

// given 2 arrays, return a new array with even numbers from both arrays
// order doesn't matter for now
List<int> findEvenNums(List<int> arr1, List<int> arr2) {
  List<int> result = [];
  for (int element in arr1) {
    if (element % 2 == 0) {
      result.add(element);
    }
  }
  for (int element in arr2) {
    if (element % 2 == 0) {
      result.add(element);
    }
  }
  return result;
}

void reverseInPlace(List<int> arr) {
  int start = 0;
  int end = arr.length - 1;
  while (start < end) {
    int temp = arr[start];
    arr[start] = arr[end];
    arr[end] = temp;
    start++;
    end--;
  }
}

List<int> rotateArray(List<int> arr) {
  // use list.filled for better memory performance since we know the
  // fixed size befoehand
  List<int> newArray = List.filled(arr.length, 0);
  for (int i = 1; i < arr.length; i++) {
    newArray[i - 1] = arr[i];
  }
  newArray[newArray.length - 1] = arr[0];
  return newArray;
}

void main() {
  List<int> list1 = [1, 3, 5, 7, 9];
  List<int> list2 = [2, 4, 6, 8, 10, 12];
  List<int> list3 = [5, 12, 18, 23, 37, 41, 59, 63, 72, 88, 97];
  List<List<int>> tests = [list1, list2, list3];
  List<int> targets = [1, 12, 41];

  // B-search
  // for (int i = 0; i < tests.length; i++) {
  //   print(binarySearch(tests[i], targets[i]));
  // }
  // Reverse
  // List<int> toReverse = [2, 4, 6, 8, 10, 12];
  // reverseInPlace(toReverse);
  // print(toReverse);

  print(rotateArray(list1));
}
