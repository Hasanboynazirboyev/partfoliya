import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffDFDFDF),
      appBar: AppBar(
        toolbarHeight: 144,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Alisher Toxirov",
              style: TextStyle(fontSize: 32, color: Colors.black,fontWeight: FontWeight.bold),
            ),
            Text(
              "+998901234567",
              style: TextStyle(fontSize: 20, color: Color(0xfff818C99)),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/svg/ic_edit.svg",
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 6,left: 12,right: 12),
              child: listTileFunc(
                nomi: "Filiallar",
                onTap: () {},
                leading: SvgPicture.asset(
                  width: 24,
                  height: 24,
                  "assets/svg/ic_location.svg",
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 6,bottom: 6,left: 12,right: 12),
              child: listTileFunc(
                  nomi: "Sozlamalar",
                  leading: SvgPicture.asset(
                    width: 24,
                    height: 24,
                    "assets/svg/ic_settings.svg",
                  ),
                  onTap: () {
          
                  }),
            ),
          ),
          InkWell(
            onTap: () {
              
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 6,right: 12,left: 12,bottom: 6),
              child: listTileFunc(
                  nomi: "Servis haqida",
                  leading: SvgPicture.asset(
                    width: 24,
                    height: 24,
                    "assets/svg/ic_info.svg",
                  ),
                  onTap: () {}),
            ),
          )
        ],
      ),
    );
  }

  Widget listTileFunc(
      {required String nomi, required void Function() onTap, Widget? leading}) {
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
            child: leading),
        title: Text(
          "$nomi",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          Icons.chevron_right_outlined,
          size: 30,
          color: Color(0xfffCCCCCC),
        ),
      ),
    );
  }
}
