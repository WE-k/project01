import 'dart:io';

import 'package:flutter/material.dart';
import 'package:Caladium_Characteristics_Evaluation_System/constans.dart';
import 'package:Caladium_Characteristics_Evaluation_System/page/AddCamera.dart';
import 'package:Caladium_Characteristics_Evaluation_System/page/AddImage.dart';
import 'package:Caladium_Characteristics_Evaluation_System/page/info.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late File _image;
  late List _results;
  bool imageSelect = false;

  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bghuu.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "",
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            const SizedBox(
              height: 140.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: button,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      /*onPressed:  () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => camera(),
                            ),
                            );
                          },*/
                      onPressed: () {
                        Navigator.push(
                          //pushReplacement ไม่มีปุ่มกลับ
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddCamera(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.camera_alt,
                        size: 30,
                        color: textIcon,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: button,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddImage(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.photo_size_select_actual_outlined,
                        size: 30,
                        color: textIcon,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: button,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => info(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.my_library_books_sharp,
                        size: 30,
                        color: textIcon,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
