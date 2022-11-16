import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecomeduemPage extends StatelessWidget {
  final String imagePath;
  RecomeduemPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aksiyaaa"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8.5,right: 12,top: 12),
        height: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        
        child: Column(
        
          children: [
            Container(
              
              alignment: Alignment.topLeft,
              height: 228,
              
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imagePath)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ramazon tuxfasi" ,style: TextStyle(fontSize: 25),),
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
      ),
    );
  }
}
