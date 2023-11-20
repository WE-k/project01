import 'package:flutter/material.dart';

import '../constans.dart';
import '../homepage.dart';

class Wingbean extends StatelessWidget {
  const Wingbean({Key? key}) : super(key: key);

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
                image: AssetImage("assets/wing2.jpg"),
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
              "   ถั่วพู : wingbean",
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
              "     มีลักษณะกลมเรียบ  เมื่อดิบมีสีเขียวเข้ม เมื่อสุกเมล็ดเป็นสีน้ำตาลเข้ม เมล็ดมีหลายสี",
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
              "    เป็นพืชล้มลุก เป็นไม้เลื้อย เป็นพืชสมุนไพร ลำต้นลักษณะไม่มีเนื้อไม้ ลำต้นเถาแข็งและเหนียว มีสีเขียวและเขียวปนม่วงได้แก่สีขาว สีเหลือง สีครีม สีน้ำตาล ส่วนใหญ่เมล็ดสีน้ำตาล",
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