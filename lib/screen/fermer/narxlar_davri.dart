import 'package:flutter/material.dart';
import 'package:h_a/models/price_model.dart';
import 'package:h_a/screen/fermer/add_price.dart';

import '../user/add_user.dart';

class NarxlarDavri extends StatefulWidget {
  const NarxlarDavri({super.key});

  @override
  State<NarxlarDavri> createState() => _NarxlarDavriState();
}

class _NarxlarDavriState extends State<NarxlarDavri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Narxlar davri',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddPrice()),
                      );
                    },
                    child: Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.add, color: Colors.grey, size: 20),
                          SizedBox(width: 10),
                          Text(
                            'Qo\'shish',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.check, color: Colors.green, size: 20),
                        SizedBox(width: 10),
                        Text(
                          'Tahrirlash',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.remove, color: Colors.grey, size: 20),
                        SizedBox(width: 10),
                        Text(
                          'O\'chirish',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                ],
              ),
            ),
            Table(
              border: TableBorder.all(color: Colors.black, width: 1),
              children: List.generate(priceList.length, (int index) {
                return TableRow(
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.grey[300] : Colors.white,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        priceList[index].date,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: index == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        priceList[index].price,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: index == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
