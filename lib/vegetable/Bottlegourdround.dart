import 'package:flutter/material.dart';

import '../constans.dart';
import '../homepage.dart';

class Bottlegourdround extends StatelessWidget {
  const Bottlegourdround({Key? key}) : super(key: key);
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
                image: AssetImage("assets/Tround.jpg"),
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
              "   น้ำเต้าพันธุ์ลูกกลม : bottle grourd round",
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
              "    มีลักษณะแบนยาวรี คล้ายเล็บมือ เมล็ดผิวเปลือกแข็ง มีสีน้ำตาล",
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
              "     เป็นเถาเลื้อยมีอายุสั้น มีเปลือกแข็งผิวเรียบ มีสีเขียวอ่อน  ผลมีลักษณะรูปร่างแตกต่างหลากหลาย ทรงรี ทรงกระบอกตามสายพันธุ์",
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
