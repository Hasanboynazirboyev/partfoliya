
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TovarMalumotlari extends StatefulWidget {
    String nomi;
    String imagePath;

   TovarMalumotlari({super.key,
    required this.nomi,
    required this.imagePath,


   });

  @override
  State<TovarMalumotlari> createState() => _TovarMalumotlariState();
}

class _TovarMalumotlariState extends State<TovarMalumotlari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nomi) 
        ),
        body: Column(
          children: [
            Container(
              height: 375,
              alignment: Alignment.center,
              

              
              child: Image.asset(widget.imagePath,fit: BoxFit.cover,width: 240,height: 200,),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.nomi ,style: TextStyle(fontSize: 24),),
                SizedBox(
                  height: 5,
                ),
                Text(
                  """Burgerlar juda mazali va hozirgi kunda bizda chegirma ketmoqda agar 2 ta burger harid qilsangiz uchinchisi tekinga qo'shib beriladi """,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          ],
        ),
    );
  }
}