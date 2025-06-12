import 'package:flutter/material.dart';
import 'package:h_a/screen/fermer/add_fermer.dart';
import 'package:h_a/models/fermer_model.dart';
import 'package:h_a/models/fermer_model.dart';
import 'package:h_a/models/fermer_model.dart';
import 'package:h_a/models/fermer_model.dart';
import 'package:h_a/models/fermer_model.dart';
import 'package:h_a/models/user_model.dart';
import 'package:h_a/screen/paxta/paxta.dart';

import '../user/add_user.dart';

class Fermers extends StatefulWidget {
  const Fermers({super.key});

  @override
  State<Fermers> createState() => _FermersState();
}

class _FermersState extends State<Fermers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
              ),
              Text(
                'Fermerlar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddFermer()),
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
            children: List.generate(fermersList.length, (int index) {
              return TableRow(
                decoration: BoxDecoration(
                  color: index == 0 ? Colors.grey[300] : Colors.white,
                ),
                children: [
                  onTapWidget(fermersList[index].kod, index == 0, context),
                  onTapWidget(fermersList[index].fio, index == 0, context),
                  onTapWidget(fermersList[index].manzil, index == 0, context),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

onTapWidget(String txt, bool isHeader, context) {
  Widget text = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      txt,
      style: TextStyle(
        fontSize: 16,
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
      ),
    ),
  );
  return isHeader
      ? text
      : InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Paxta()),
            );
          },
          child: text,
        );
}
