/**  Requirement
2. Find 2 elements with the greatest sum in an array
Example: [1,7,9,2,5,3,8] => [9,8]
*/
/** Program */
void main() {
  final numbers = <int>[1, 7, 9, 2, 5, 3, 8];
  numbers.sort();
  print(numbers.reversed.toList().sublist(0, 2)); //[9, 8]
}
