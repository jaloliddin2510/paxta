import 'package:flutter/material.dart';
import 'package:h_a/screen/user/add_user.dart';
import 'package:h_a/screen/fermer/fermers.dart';
import 'package:h_a/models/user_model.dart';

class Foydalanuvchilar extends StatefulWidget {
  const Foydalanuvchilar({super.key});

  @override
  State<Foydalanuvchilar> createState() => _FoydalanuvchilarState();
}

class _FoydalanuvchilarState extends State<Foydalanuvchilar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
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
                  SizedBox(width: 12),
                  Text(
                    'Foydalanuvchilar',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Qoshish()),
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
            children: List.generate(userList.length, (int index) {
              return TableRow(
                decoration: BoxDecoration(color: index==0?Colors.grey[300]:Colors.white),
                children: [
                  onTapWidget(userList[index].kod, index==0, context),
                  onTapWidget(userList[index].login, index==0, context),
                  onTapWidget(userList[index].fio, index==0, context),
                  onTapWidget(userList[index].role, index==0, context),
                ],
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Sahifa 1/1',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

onTapWidget(String txt,bool isHeader, context){
  Widget text=Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      txt,
      style: TextStyle(
        fontSize: 16,
        fontWeight: isHeader
            ? FontWeight.bold
            : FontWeight.normal,
      ),
    ),
  );
  return isHeader? text :InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Fermers()));
    },
    child: text,
  );
}