import 'package:flutter/material.dart';
import 'package:h_a/screen/fermer/narxlar_davri.dart';

class AddFermer extends StatefulWidget {
  const AddFermer({super.key});

  @override
  State<AddFermer> createState() => _AddFermerState();
}

class _AddFermerState extends State<AddFermer> {
  final TextEditingController fioController = TextEditingController();
  final TextEditingController manzilController = TextEditingController();

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
                'Qo\'shish',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    'F.I.O:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 36),
                  Expanded(
                    child: TextField(
                      controller: fioController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    'Manzil:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    child: TextField(
                      controller: manzilController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NarxlarDavri()),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        color: Colors.grey[100],
                      ),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Icon(Icons.add, size: 22, color: Colors.blueGrey),
                          SizedBox(width: 8),
                          Text(
                            'Qo\'shish',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
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
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        color: Colors.grey[100],
                      ),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Icon(Icons.close, size: 22, color: Colors.red),
                          SizedBox(width: 8),
                          Text(
                            'Bekor qilish',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: Colors.black,
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

  @override
  void dispose() {
    fioController.dispose();
    manzilController.dispose();
    super.dispose();
  }
}
