/** Requirement
3. Find pairs of elements whose sum is equal to a given number
Example: [1,7,9,2,5,3,8], sum = 10 => [[1,9] ; [7,3]; [2,8]]
*/

/** Program */
void main() {
  int sum = 10;
  List<int> list = [1, 7, 9, 2, 5, 3, 8, 1, 1, 2, 3, 5];

  List<dynamic> funtFindPairSum(List<int> arr, int sum) {
    List<List> listPairSumEqual = List.empty(growable: true);
    Set arrToSet = arr.toSet();
    // Avoid using `forEach` with a function literal.
    for (int element1 in arrToSet) {
      if (!isListContainElement(listPairSumEqual, element1)) {
        for (int element2 in arrToSet) {
          if (element1 + element2 == sum && element1 != element2) {
            listPairSumEqual.add([element1, element2]);
          }
        }
      }
    }
    return listPairSumEqual;
  }

  print(funtFindPairSum(list, sum)); //[[1, 9], [7, 3], [2, 8]]
}

bool isListContainElement(List list, element) {
  if (list.isNotEmpty) {
    for (List elementPair in list) {
      if (elementPair.contains(element)) {
        return true;
      }
    }
  }
  return false;
}
