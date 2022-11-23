/**
4. Get a new array from the given array so that the elements appear only once (recommend: using Set)
Example: [1,2,3,1,2,3,4,5,6,4] => [1,2,3,4,5,6]
*/
/** Program */
void main() {
  List list = [1, 2, 3, 1, 2, 3, 4, 5, 6, 4];

  // using Set
  List listOnlyOnceElementUsingSet = list.toSet().toList();
  print('Using Set : $listOnlyOnceElementUsingSet'); //[1, 2, 3, 4, 5, 6]

  //don't using Set

  List listOnlyOnceElementDontUsingSet = toListContainOnlyOnceElement(list);
  print('Don\'t using Set : $listOnlyOnceElementDontUsingSet');
}

List toListContainOnlyOnceElement(List list) {
  List listDontUsingSet = []; //empty list
  for (var element in list) {
    if (!isListContainCurrentElement(listDontUsingSet, element)) {
      listDontUsingSet.add(element);
    }
  }
  return listDontUsingSet;
}

bool isListContainCurrentElement(List list, var elementCheck) {
  if (list.isNotEmpty) {
    for (var element in list) {
      if (element == elementCheck) return true;
    }
  }
  return false;
}
