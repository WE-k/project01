import 'dart:io';

import 'package:Caladium_Characteristics_Evaluation_System/vegetable/Angledgourd.dart';
import 'package:Caladium_Characteristics_Evaluation_System/vegetable/Bottlegourdlong.dart';
import 'package:Caladium_Characteristics_Evaluation_System/vegetable/Bottlegourdround.dart';
import 'package:Caladium_Characteristics_Evaluation_System/vegetable/Muskmelon.dart';
import 'package:Caladium_Characteristics_Evaluation_System/vegetable/Pumpkin.dart';
import 'package:Caladium_Characteristics_Evaluation_System/vegetable/Waxgourd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:Caladium_Characteristics_Evaluation_System/constans.dart';

import '../vegetable/Sugarpea.dart';
import '../vegetable/Bottlegourdlong.dart';
import '../vegetable/Bottlegourdround.dart';
import '../vegetable/Angledgourd.dart';
import '../vegetable/Wingbean.dart';
import '../vegetable/Yardlongbean.dart';


class AddCamera extends StatefulWidget {
  const AddCamera({Key? key}) : super(key: key);

  @override
  State<AddCamera> createState() => _AddCameraState();
}

class _AddCameraState extends State<AddCamera> {
  @override
  late File _image;
  late List _results;
  bool imageSelect = false;
  @override
  void initState() {
    super.initState();
    loadModel();
  }

  Future loadModel() async {
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(
        model: "assets/modeluou.tflite",
        labels: "assets/labels_s.txt"))!;
    print("Models loading status: $res");
  }

  Future imageClassification(File image) async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path, //image
      imageMean: 127.5,
      imageStd: 127.5,
      numResults: 1, //จำนวนคำตอบ
      threshold: 0.05, // ค่าความถูกต้องที่ให้แสดง
    );
    setState(() {
      _results = recognitions!;
      _image = image;
      imageSelect = true;
    });
  }

  Widget LabelCaladium(String buttonLabel) {

    return Container(
      child: Column(
        children: [
          Container(
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  pushResult(buttonLabel);
                },
                child: Text(
                  buttonLabel,
                  style: TextStyle(
                      fontSize: 16,
                      color: textIcon,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: background3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background3,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.brown,
          size: 28,
        ),
        title: const Text(
          "",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        elevation: 0,
        backgroundColor: background3,
        /*actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.info_rounded,
              size: 35,
              color: Colors.brown,
            ),
          ),
        ],*/
      ),
      body: ListView(
        children: [
          (imageSelect)
              ? Container(
            margin: const EdgeInsets.all(20),
            child: Image.file(_image),
            height: 350,
          )
              : Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(25.0),
            child: const Opacity(
              opacity: 0.8,
              child: Center(
                child: Text(
                  "ถ่าย รูปภาพเมล็ดพันธ์ุพืช",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: (imageSelect)
                  ? _results.map((result) {
                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  color: textIcon,
                  child: Container(
                    width: 320,
                    padding: const EdgeInsets.all(15.0),
                    //margin: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "เมล็ดพันธุ์ : ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            LabelCaladium(
                                "${result['label']}"
                            ),
                            Text(
                              "ค่า confidence คือ  ${(result['confidence'] * 100).toStringAsFixed(2)} %",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }).toList()
                  : [],
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        height: 65,
        width: 65,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: textIcon,
            onPressed: pickCamera,
            tooltip: "Pick Camera",
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  //ไปยังหน้าสายพันธุ์ตามที่จำแนก
  pushResult(String value) {
    print(value);
    setState(() {
      if (value == 'บวบเหลี่ยม') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Angledgourd()),
        );
      } else if (value == 'เต้ายาว') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bottlegourdlong()),
        );
      } else if (value == 'เต้ากลม') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bottlegourdround()),
        );
      } else if (value == 'แตงไทย') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Muskmelon()),
        );
      } else if (value == 'ฟักทอง') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pumpkin()),
        );
      } else if (value == 'ถั่วลันเตา') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Sugarpea()),
        );
      } else if (value == 'แฟง') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Waxgourd()),
        );
      } else if (value == 'ถั่วพู') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Wingbean()),
        );
      } else if (value == 'ถั่วฝักยาว') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Yardlongbean()),
        );
      }
    });
  }

  Future pickCamera() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
  }
}
