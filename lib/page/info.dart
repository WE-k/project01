import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constans.dart';

class info extends StatefulWidget {
  const info({Key? key}) : super(key: key);

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
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
          "ข้อมูลเมล็ดพันธ์ุพืช",
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: background3,
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
        children: [
         const Text(
              "เมล็ดพันธ์ุผักสวนครัว 9 ชนิด ",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
              ),
            ),
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/ton.jpg"),
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
              "  บวบเหลี่ยม : angled gourd",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("         - เมล็ด: มีลักษณะแบนวงรี เมล็ดผิวเปลือกขรุขระ มีปีกออกสองข้าง มีสีดำเป็นบวบชนิดหนึ่ง เป็นไม้เถาเลื้อยมีอายุสั้น พืชผักสมุนไพร มีลักษณะเหลี่ยมๆ สีเขียว\n",style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
            ),),
          ),
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/su2.jpg"),
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
              "  ถั่วลันเตา : sugar pea",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("         - เมล็ด: มีลักษณะทรงกลมเล็กๆ เมล็ดมีสีเขียว เมล็ดแก่จัดมีสีน้ำตาล เป็นพืชผักสมุนไพร เป็นไม้เถาเลื้อย มีลักษณะทรงแบนยาวรี โค้งงอเล็กน้อย ฝักหนาอวบ ผักยาวเหนียวและแข็ง ผักจะนูนขึ้น เมล็ดโตเรียงกัน\n",style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
            ),),
          ),
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/pum2.jpg"),
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
              "  ฟักทอง : pumpkin",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("         - เมล็ด: มีลักษณะแบนรี มีสีขาวนวลป็นพืชล้มลุก มีอายุสั้น เป็นทั้งผักและผลไม้ ตระกูลเดียวกับมะระ ลำต้นลักษณะกลม เป็นไม้เถาเลื้อย เถาใหญ่เลื้อยตามพื้น เถาแข็งเหนียวมีสีเขียว มีขนอ่อนปลกคลุม\n",style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
            ),),
          ),
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Tlong.jpg"),
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
              "  น้ำเต้าพันธ์ุลูกยาว : bottle gourd long",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("         - เมล็ด: มีลักษณะแบนยาวรี คล้ายเล็บมือ เมล็ดผิวเปลือกแข็ง มีสีน้ำตาลเป็นเถาเลื้อยมีอายุสั้น มีเปลือกแข็งผิวเรียบ มีสีเขียวอ่อน  ผลมีลักษณะรูปร่างแตกต่างหลากหลาย ทรงรี ทรงกระบอกตามสายพันธุ์\n",style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
            ),),
          ),
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
              "น้ำเต้าพันธ์ุลูกกลม :bottle gourd round",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("         - เมล็ด: มีลักษณะแบนยาวรี คล้ายเล็บมือ เมล็ดผิวเปลือกแข็ง มีสีน้ำตาลเป็นเถาเลื้อยมีอายุสั้น มีเปลือกแข็งผิวเรียบ มีสีเขียวอ่อน  ผลมีลักษณะรูปร่างแตกต่างหลากหลาย ทรงรี ทรงกระบอกตามสายพันธุ์\n",style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
            ),),
          ),
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/wax2.jpg"),
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
              "  แฟง : waxgourd",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("         - เมล็ด: มีลักษณะแบนรูปไข่ เมล็ดผิวเปลือกเรียบ มีสีเหลืองนวลเป็นพืชล้มลุก เป็นไม้เถาเลื้อยอายุสั้น เป็นเถาแข็งเหนียว มีสีเขียว เป็นใบเดี่ยว\n",style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
            ),),
          ),
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
              "  ถั่วพู : wing bean",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("         - เมล็ด: มีลักษณะกลมเรียบ  เมื่อดิบมีสีเขียวเข้ม เมื่อสุกเมล็ดเป็นสีน้ำตาลเข้ม เมล็ดมีหลายสีเป็นพืชล้มลุก เป็นไม้เลื้อย เป็นพืชสมุนไพร ลำต้นลักษณะไม่มีเนื้อไม้ ลำต้นเถาแข็งและเหนียว มีสีเขียวและเขียวปนม่วงได้แก่สีขาว สีเหลือง สีครีม สีน้ำตาล ส่วนใหญ่เมล็ดสีน้ำตาล\n",style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
            ),),
          ),
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/Musk2.jpg"),
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
              "  แตงไทย : musk melon",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("         - เมล็ด: มีลักษณะแบนรีๆ เมล็ดอ่อนมีสีขาว เมล็ดแก่จะเปลี่ยนเป็นสีครีมเป็นพืชล้มลุก เป็นเถาเลื้อย มีอายุสั้น ลักษณะทรงกลมยาวรี มีลายสีขาวตามยาว ผลอ่อนมีสีเขียว ผลแก่สีเหลือง  มีรสชาติหวานเย็น มีกลิ่นเฉพาะ\n",style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
            ),),
          ),
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/yard2.jpg"),
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
              "  ถั่วฝักยาว : yard long bean",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("         - เมล็ด: มีลักษณะยาวรีๆ เมื่อดิบมีสีเขียวเข้ม เมื่อสุกจะเปลี่ยนเป็นเมล็ดสีน้ำตาลเป็นพืชสมุนไพร ลักษณะลำต้นเดี่ยว เป็นเถาเลื้อย ลำต้นมีลักษณะเถาแข็งและเหนียวสีเขียว\n",style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
            ),),
          ),
        ],
      ),
    );
  }
}
