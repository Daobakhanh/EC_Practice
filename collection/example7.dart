/**
7. 	I have an array: ['face', 'zalo', 'face', 'gmail', 'zalo', 'zalo']
	Write a function with 1 input parameter, an return a new object like this:
	{'face': 2, 'zalo': 3, 'gmail':1} // 2,3,1 are the number of occurrences of 'face', 'zalo', 'gmail' in the array

Example: 		const myArr = ['face', 'zalo', 'face', 'gmail', 'zalo', 'zalo']
			const myFunc = (inputArr) {
				//write somthing here
			}
			myFunc(myArr) // {'face': 2, 'zalo': 3, 'gmail':1}
*/

void main() {
  const myArr = ['face', 'zalo', 'face', 'gmail', 'zalo', 'zalo'];
  Map<String, int> myFunc(List myArr) {
    Map<String, int> map = {};
    int count = 0;
    for (var element1 in myArr) {
      for (var element2 in myArr) {
        if (element2 == element1) ++count;
      }
      map[element1] = count;
      count = 0;
    }
    return map;
  }

  print(myFunc(myArr)); //{face: 2, zalo: 3, gmail: 1}
}
