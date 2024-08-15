import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getpayin/Components/Card_Tile.dart';
import 'package:getpayin/Components/Transaction_Tile.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});
  @override
  Widget build(BuildContext context) {
    final List<dynamic> Transaction_data = [
      {
        "title": "Adobe Illustrator",
        "type": "Subscription fee",
        "amount": -15.00,
        "color": const Color.fromRGBO(255, 245, 224, 1),
        "icon": const Icon(Icons.laptop_mac_rounded,
            color: Color.fromRGBO(255, 203, 102, 1)),
      },
      {
        "title": "House",
        "type": "Subscription fee",
        "amount": -50.00,
        "color": const Color.fromRGBO(217, 216, 247, 1),
        "icon": const Icon(Icons.download_rounded,
            color: Color.fromRGBO(63, 59, 215, 1)),
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
        "amount": -32.00,
        "color": const Color.fromRGBO(221, 246, 222, 1),
        "icon":
            const Icon(Icons.credit_card, color: Color.fromRGBO(83, 210, 88, 1))
      }
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage('images/NFT.jpg'))),
                    ),
                    const Text('Wallet',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const Icon(Icons.more_vert_rounded),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0, left: 2, bottom: 2, top: 2),
                        child: DottedBorder(
                          dashPattern: [12],
                          radius: const Radius.circular(12),
                          borderType: BorderType.RRect,
                          strokeWidth: 3,
                          strokeCap: StrokeCap.round,
                          child: Container(
                            width: 40,
                            height: 170,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.add_circle_rounded,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    }
                    return const Card_Tile();
                  }),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Transactions',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SvgPicture.asset('images/LetsIconsFilterBig.svg'),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  final item = Transaction_data[index];
                  return Transaction(
                      title: item['title'],
                      type: item['type'],
                      amount: item['amount'],
                      color: item['color'],
                      icon: item['icon']);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
