import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../redact_profil.dart';
import 'ism_page.dart';
import 'number_TelePhone.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 144,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(IsmPage.ism,style: TextStyle(fontSize: 32,color: Colors.black),),
            Text(NumberTelephone.number,
              style: TextStyle(fontSize: 20,color: Colors.black54),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => RedactProfil())));
              },
              icon: Icon(
                Icons.edit,
                color: Colors.blue,
              ))
        ],
      ),
      body: Column(
        children: [
          listTileFunc(
            nomi: "Filiallar",
            onTap: () {},
            leading: Icon(Icons.location_on,color: Color.fromARGB(255, 134, 25, 184)), 
          ),
          listTileFunc(
            nomi: "Sozlamalar", 
            leading: Icon(Icons.settings,color: Color.fromARGB(255, 134, 25, 184)),
          onTap: (){

          }),
          listTileFunc(
            nomi: "Servis haqida",
            leading: Icon(Icons.assignment_late_sharp,color: Color.fromARGB(255, 134, 25, 184)),
           onTap: (){})
        ],
      ),
    );
  }

  Container listTileFunc(
      {required String nomi, required void Function() onTap, Widget? leading}) {
    return Container(
     
      padding: EdgeInsets.symmetric(vertical: 8),
      margin: EdgeInsets.only(top: 8,left: 12,right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
           height: 40,
      width: 40,
          decoration: BoxDecoration(
           color: Color.fromARGB(255, 228, 226, 223),
            borderRadius: BorderRadius.circular(10),
          ),
          child: leading
          ),
        title: Text(
          "$nomi",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.chevron_right_outlined,size: 30,),
      ),
    );
  }
}
