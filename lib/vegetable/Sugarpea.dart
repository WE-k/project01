import 'package:flutter/material.dart';

import '../constans.dart';
import '../homepage.dart';

class Sugarpea extends StatelessWidget {
  const Sugarpea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background3,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.brown,
          size: 35,
        ),
        title: const Text(
          "เมล็ดพันธ์พืช",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: background3,
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homepage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.home_sharp,
                size: 35,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/sugar.jpg"),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.all(20),
            //child: Image.file(_image),
            height: 200,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              //name
              "   ถั่วลันเตา : sugar pea",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "ลักษณะเมล็ด : ",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              //data
              "     มีลักษณะทรงกลมเล็กๆ เมล็ดมีสีเขียว เมล็ดแก่จัดมีสีน้ำตาล",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 16,
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "ลักษณะเฉพาะ :  ",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "     เป็นพืชผักสมุนไพร เป็นไม้เถาเลื้อย มีลักษณะทรงแบนยาวรี โค้งงอเล็กน้อย ฝักหนาอวบ ผักยาวเหนียวและแข็ง ผักจะนูนขึ้น เมล็ดโตเรียงกัน",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 16,
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "วิธีการปลูกเมล็ดพันธ์พืช :",
                style:  TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/nu.jpg"),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.all(20),
            //child: Image.file(_image),
            height: 450,
          ),
        ],
      ),
    );
  }
}