import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_modul2/screens/maxsulotlar/buyurtma/registration/ism_page.dart';
import 'package:task_modul2/screens/maxsulotlar/buyurtma/registration/number_TelePhone.dart';

import '../../bottomNavBarPage.dart';


class RedactProfil extends StatefulWidget {
  const RedactProfil({super.key});

  @override
  State<RedactProfil> createState() => _RedactProfilState();
}

class _RedactProfilState extends State<RedactProfil> {
  late List redactBool;
  late String ism;
  late String number;
  late List nameSplit;
  late List numberSplit;

  late TextEditingController _namecontroller;
  @override
  void initState() {
    _namecontroller = TextEditingController();

    ism = IsmPage.ism;
    number = NumberTelephone.number;
    nameSplit = ism.split("");
    numberSplit = number.split("");
    redactBool = List.generate(3, (index) => true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profilni o'zgartirish"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "\t\t\tIsm",
                style: TextStyle(fontSize: 16),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(12),
                  child: TextField(
                    controller: IsmPage.namecontroller,
                    decoration: InputDecoration(
                      hintText: "Ism kirgazing",
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
                ),
                onTap: () {
                  redactBool[0] = false;
                  setState(() {});
                },
              ),
              Text(
                "\t\t\Telefo raqam",
                style: TextStyle(fontSize: 16),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(12),
                  child: TextField(
                    controller: NumberTelephone.numbercontroller,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "raqam kirgazing",
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
                ),
                onTap: () {
                  redactBool[1] = false;
                  setState(() {});
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 66, 8, 132),
                    minimumSize: Size(351, 48)),
                onPressed: () {
                  IsmPage.ism = IsmPage.namecontroller.text;
                  NumberTelephone.number =
                      NumberTelephone.numbercontroller.text;
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BottomNavBarPage(),), (route) => false);
                },
                child: Text("Saqalash ")),
          )
        ],
      ),
    );
  }
}
