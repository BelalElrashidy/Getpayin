import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getpayin/Components/Earning_Tile.dart';
import 'package:getpayin/Components/Transaction_Tile.dart';
import 'package:getpayin/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final List<dynamic> Transaction_data = [
      {
        "title": "Adobe Illustrator",
        "type": "Subscription fee",
        "amount": -32.00,
        "color": const Color.fromRGBO(255, 245, 224, 1),
        "icon": const Icon(Icons.laptop_mac_rounded,
            color: Color.fromRGBO(255, 203, 102, 1)),
      },
      {
        "title": "Driblle",
        "type": "Subscription fee",
        "amount": -15.00,
        "color": const Color.fromRGBO(255, 245, 224, 1),
        "icon": const Icon(Icons.laptop_mac_rounded,
            color: Color.fromRGBO(255, 203, 102, 1)),
      },
      {
        "title": "Sony Camera",
        "type": "Shopping fee",
        "amount": -200.00,
        "color": const Color.fromRGBO(253, 242, 251, 1),
        "icon": const Icon(Icons.shopping_bag_outlined,
            color: Color.fromRGBO(246, 189, 233, 1)),
      },
      {
        "title": "Paypal",
        "type": "Salary",
        "amount": 32.00,
        "color": const Color.fromRGBO(221, 246, 222, 1),
        "icon":
            const Icon(Icons.credit_card, color: Color.fromRGBO(83, 210, 88, 1))
      }
    ];
    final List<dynamic> Earning_data = [
      {
        'title': 'Upwork',
        'amount': '\$3,000',
        'color': const Color.fromRGBO(224, 83, 61, 1)
      },
      {
        'title': 'Freepik',
        'amount': '\$3,000',
        'color': const Color.fromRGBO(231, 140, 157, 1)
      },
      {
        'title': 'Envato',
        'amount': '\$2,000',
        'color': const Color.fromRGBO(55, 124, 200, 1)
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      child: SafeArea(
        child: ListView(children: [
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage('images/NFT.jpg'))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning!',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text('Client Name',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.notifications_none_rounded),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/Background1.png')),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Total Balance',
                    style: TextStyle(color: Colors.white)),
                const SizedBox(height: 8),
                const Text('\$25,000.40',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        const Text('Wallet',
                            style: TextStyle(color: Colors.white)),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyApp(
                                        index: 1,
                                      ))),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Color.fromRGBO(36, 36, 36, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/Background2.png')),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Income",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text(
                          '\$ 20,000',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(121, 121, 121, 1),
                  ),
                  height: 42,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Outcome",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text(
                          '\$ 20,000',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Earnings',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                GestureDetector(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp(
                                    index: 1,
                                  )),
                        ),
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final item = Earning_data[index];
                  return Earning(
                    title: item['title'],
                    amount: item['amount'],
                    color: item['color'],
                  );
                }),
          ),
          const SizedBox(height: 16),
          const Text('Transactions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: Transaction_data.length,
                itemBuilder: (context, index) {
                  final item = Transaction_data[index];
                  return Transaction(
                    title: item['title'],
                    type: item['type'],
                    amount: item['amount'],
                    color: item['color'],
                    icon: item['icon'],
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
