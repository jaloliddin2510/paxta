import 'package:flutter/material.dart';

class AddPrice extends StatefulWidget {
  const AddPrice({super.key});

  @override
  State<AddPrice> createState() => _AddPriceState();
}

class _AddPriceState extends State<AddPrice> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Qo'shish",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Sana',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12),
              Stack(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'mm/dd/yyyy',
                    ),
                    controller: _dateController,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025),
                          ).then((pickDate) {
                            if (pickDate != null) {
                              setState(() {
                                _dateController.text =
                                    "${pickDate.day}/${pickDate.month}/${pickDate.year}";
                              });
                            }
                          });
                        },
                        icon: Icon(Icons.calendar_today_rounded),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12),
              Text('1 kg uchun narx, so\'m:',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),),
              TextField(
                controller: _priceController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'Diqqat',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: Text(
                              'Siz rostdan ham ${_dateController.text} sanasidagi narxni qo\'shmoqchimisiz?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            actions: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 60,
                                  height: 33,

                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                  ),

                                  child: Center(
                                    child: Text(
                                      'Ha',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              InkWell(
                                onTap:(){
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 60,
                                  height: 33,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Yo\'q',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: Colors.blueGrey, size: 20),
                          SizedBox(width: 10),
                          Text(
                            'Qo\'shish',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
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
                          Icon(Icons.close, color: Colors.red, size: 20),
                          SizedBox(width: 10),
                          Text(
                            'Bekor qilish',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
