import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../bottomNavBarPage.dart';


class IsmPage extends StatefulWidget {
  IsmPage({super.key});
  static  String ism = "";
  static TextEditingController namecontroller = TextEditingController();

  @override
  State<IsmPage> createState() => _IsmPageState();
}

class _IsmPageState extends State<IsmPage> {
  late bool isTrue;
  late SharedPreferences prefs;
  Future initShared() async {
    prefs = await SharedPreferences.getInstance();
  }
  late TextEditingController _namecontroller;

  writeShared(SharedPreferences preferences) {
    preferences.setBool("isNumber", BottomNavBarPage.isNumber!);
    print(prefs.getBool("isNumber"));
    print("yozildi");
  }

  @override
  void initState() {
    initShared();
    _namecontroller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: _namecontroller,
            decoration: InputDecoration(
              labelText: "ism  kirgazing",
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 59, 5, 121),
                  )),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.black,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 66, 8, 132),
                    minimumSize: Size(351, 48)),
                onPressed: () {
                  BottomNavBarPage.isNumber = true;
                  IsmPage.ism = _namecontroller.text;
                  IsmPage.namecontroller = _namecontroller;

                  writeShared(prefs);

                 Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BottomNavBarPage()), (route) => false);
                },
                child: Text("Davom etish")),
          )
        ],
      ),
    );
  }
}
