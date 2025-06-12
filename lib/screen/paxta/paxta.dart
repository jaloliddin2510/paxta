import 'package:flutter/material.dart';
import 'package:h_a/models/paxta_model.dart';
import 'package:h_a/models/paxta_model.dart';
import 'package:h_a/models/paxta_model.dart';
import 'package:h_a/models/paxta_model.dart';

class Paxta extends StatefulWidget {
  const Paxta({super.key});

  @override
  State<Paxta> createState() => _PaxtaState();
}

class _PaxtaState extends State<Paxta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Xom paxta hisoboti',style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                  ),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(Icons.add,size: 22,color: Colors.blueGrey,),
                      SizedBox(width: 2),
                      Text('Qo\'shish'),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                  ),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(Icons.edit,size: 22,color: Colors.orange,),
                      SizedBox(width: 2),
                      Text('Tahrirlash'),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                  ),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(Icons.delete,size: 22,color: Colors.blueGrey,),
                      SizedBox(width: 2),
                      Text('O\'chirish'),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                  ),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(Icons.save,size: 22,color: Colors.orangeAccent,),
                      SizedBox(width: 2),
                      Text('Qo\'shish'),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                  ),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(Icons.local_fire_department,size: 22,color: Colors.orangeAccent,),
                      SizedBox(width: 2),
                      Text('Quritish rejimi'),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                  ),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(Icons.all_inbox,size: 22,color: Colors.blue,),
                      SizedBox(width: 2),
                      Text('Umumiy tuzilish effekti'),
                    ],
                  ),
                ),
                SizedBox(width: 12),
              ],
            ),
          ),
          Table(
            border: TableBorder.all(color: Colors.black, width: 1),
            children: List.generate(paxtaList.length, (int index) {
              return TableRow(
                decoration: BoxDecoration(
                  color: index == 0 ? Colors.grey[300] : Colors.white,
                ),
                children: [
                  onTapWidget(paxtaList[index].nomer, index == 0, context),
                  onTapWidget(paxtaList[index].date, index == 0, context),
                  onTapWidget(paxtaList[index].fermer, index == 0, context),
                  onTapWidget(paxtaList[index].seleksiyaTuri, index == 0, context),
                  onTapWidget(paxtaList[index].xomPaxtaMassasi, index == 0, context),
                  onTapWidget(paxtaList[index].axlatFoizi, index == 0, context),
                  onTapWidget(paxtaList[index].namlik, index == 0, context),
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

    },
    child: text,
  );
}