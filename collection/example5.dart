/**
5. Get a new array of duplicate elements in 2 arrays, each element appears exactly once in the new array
Example: 	const arr1 = [1, 2, 3, 4, 5, 6, 7, 9, 9, 8, 7, 7];
		const arr2 = [3, 5, 9, 10, 88];
			=> [3,5,9]
*/
void main(List<String> args) {
  // const arr1 = [1, 2, 3, 4, 5, 6, 7, 9, 9, 8, 7, 7];
  const arr1 = [1, 2, 3, 9];
  const arr2 = [3, 5, 9, 10, 88];

  // //using method
  // Set set1 = arr1.toSet();
  // Set set2 = arr2.toSet();
  // List intersectionList = set1.intersection(set2).toList();
  // print(intersectionList);

  //don't using method
  List newList1 = arr1.toSet().toList();
  List newList2 = arr2.toSet().toList();
  print(intersectionList(newList1, newList2));
}

List intersectionList(List list1, List list2) {
  //solution 1
  // List intersectionList = [];
  // for (var element1 in list1) {
  //   for (var element2 in list2) {
  //     if (element1 == element2) intersectionList.add(element1);
  //   }
  // }

  //solution 2
  List intersectionList = list1.toList();
  if (list1.isNotEmpty) {
    for (int element in list1) {
      if (!list2.contains(element)) {
        intersectionList.remove(element);
      }
    }
  }
  return intersectionList;
}
