import 'package:flutter/material.dart';
import 'package:h_a/screen/user/users.dart';

class Qoshish extends StatefulWidget {
  const Qoshish({super.key});

  @override
  State<Qoshish> createState() => _QoshishState();
}

class _QoshishState extends State<Qoshish> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fioController = TextEditingController();
  String selectValue = 'Adminstrator';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Qo\'shish',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  controller: _loginController,
                ),
                SizedBox(height: 12),
                Text(
                  'Parol',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  controller: _passwordController,
                ),
                SizedBox(height: 12),
                Text(
                  'F.I.O.:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  controller: _fioController,
                ),
                SizedBox(height: 12),
                Text(
                  'Tur:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                DropdownButton<String>(
                  value: selectValue,
                  items: ['Adminstrator', 'Foydalanuvchi'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectValue = newValue!;
                    });
                  },
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
                                'Siz haqiqatdan ham ${_fioController.text} ni qo\'shmoqchimisiz',
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
      ),
    );
  }
}
