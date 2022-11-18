import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_modul2/screens/views/profile/redact_profile.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  late String familya;
  late String ism;
  late String number;
  late List iconPath;
  late List nomlar ;


  @override
  void initState() {
    nomlar = [
      "Филиали",
      "Настройки",
      "О сервисе",
    ];

    iconPath = [
      "assets/svg/ic_location.svg",
       "assets/svg/ic_settings.svg",
        "assets/svg/ic_info.svg",
    ];
    familya = "Тохиров";
    ism = "Алишер";
    number = "+998991234567";
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 144,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$familya $ism",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              number,
              style: TextStyle(fontSize: 20, color: Color(0xfff818C99)),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => RedactProfil(
                            familya: familya,
                            number: number,
                            ism: ism,
                            
                          ))));
            },
            icon: SvgPicture.asset(
              "assets/svg/ic_edit.svg",
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(12),
        itemBuilder: ((context, index) {
       return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: ListTile(
        leading: Container(
            padding: EdgeInsets.all(8),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color.fromRGBO(81, 38, 125, 0.05),
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset(iconPath[index])
            ),
        title: Text(
          "${nomlar[index]}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        trailing: Icon(
          Icons.chevron_right_outlined,
          size: 30,
          color: Color(0xfffCCCCCC),
        ),
      ),
    );
      }), separatorBuilder: ((context, index) {
        return SizedBox(height: 12,);
      }),
       itemCount: 3)
    );
  }
}

  
