/**
9. I have 1 object like this: 
		const order = {
			'cart': [
				{ id: 1, name: "ao dai", amount: 5, price: 100000 },
				{ id: 2, name: "ao coc", amount: 2, price: 200000 },
				{ id: 3, name: "quan dai", amount: 3, price: 150000 },
				{ id: 4, name: "quan coc", amount: 4, price: 130000 },
			],
			'customer': 'Name',
			'address': '12 Giai Phong Street'
		};
	Please only use reduce or fold method, only one time, 
and return 2 variables: totalOfMoney = 1870000, totalOfAmount = 14;
*/

void main() {
  const order = {
    'cart': [
      {"id": 1, "name": "ao dai", "amount": 5, "price": 100000},
      {"id": 2, "name": "ao coc", "amount": 2, "price": 200000},
      {"id": 3, "name": "quan dai", "amount": 3, "price": 150000},
      {"id": 4, "name": "quan coc", "amount": 4, "price": 130000},
    ],
    'customer': 'Name',
    'address': '12 Giai Phong Street'
  };

  var res = order['cart'] as List<dynamic>;
  var returnMap = res.fold(<String, num>{'totalOfMoney': 0, 'totalOfAmount': 0},
      (acc, element) {
    acc['totalOfMoney'] = acc['totalOfMoney']! + element["price"]!;
    acc['totalOfAmount'] = acc['totalOfAmount']! + element["amount"];
    return acc;
  });
  print(returnMap); //{totalOfMoney: 580000, totalOfAmount: 14}
}
