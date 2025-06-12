import 'package:flutter/material.dart';
import 'package:h_a/screen/user/users.dart';

class Kirish extends StatefulWidget {
  const Kirish({super.key});

  @override
  State<Kirish> createState() => _KirishState();
}

class _KirishState extends State<Kirish> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Вход',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Логин',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    controller: _loginController,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Пароль',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    controller: _passwordController,
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Foydalanuvchilar()),
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
                              Icon(Icons.lock, color: Colors.orange, size: 20),
                              SizedBox(width: 10),
                              Text(
                                'Вход',
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
                            Icon(Icons.close, color: Colors.red, size: 20),
                            SizedBox(width: 10),
                            Text(
                              'Отмена',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
