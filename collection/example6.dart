/**
6. Given an array arr1. Write a function that returns a new array of the elements that appear more than once in arr1. 
The elements in new array can only appear once in this array.
Example: 	var arr1 = [1,2,3,4,2,3,5,3,1,1,5,2,3];
		var myFunc = (inputArr) {
			// write your code here
		}
		var arr2 = myFunc(arr1); // [2,3,1,5]
*/

void main() {
  var arr1 = [1, 2, 3, 4, 2, 3, 5, 3, 1, 1, 5, 2, 3, 9, 9, 10];
  List myFunc(List inputArr) {
    List list = [];
    int count = 0;
    for (var element1 in inputArr) {
      if (!list.contains(element1)) {
        for (var element2 in inputArr) {
          if (element2 == element1) ++count;
        }
      }
      if (count >= 2) list.add(element1);
      count = 0;
    }
    return list;
  }

  print(myFunc(arr1)); //[1, 2, 3, 5, 9]
}
