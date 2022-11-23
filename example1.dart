// 1. Write a function with 2 input parameters (each parameter is an array). This function returns an array of the same elements in two arrays;
// Example: 	array1 = [1,2,3,4,5,6];
// 		array2 = [3,4,8,9,12];
// 		myFunc(array1, array2); // => [3,4]

void main() {
  //solution 1
  List myFunc(List array1, List array2) {
    List resList = [];
    for (var element1 in array1) {
      for (var element2 in array2) {
        if (element1 == element2) resList.add(element1);
      }
    }
    return resList;
  }

  //solution 2
  List myFunc2(List array1, List array2) {
    return array1.fold([], (acc, element) {
      if (array2.contains(element)) acc.add(element);
      return acc;
    });
  }

  print(myFunc2([1, 2, 3, 4], [2, 3, 5, 6]));
}
