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
        title: Text("Акции",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8.5, right: 12, top: 12),
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
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Рамазан-сет",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    """Сочное донар-блюдо, финики и минеральная вода – вкусный и сытный набор для Ифтара!
Акция действует во всех филиалах и на заказы с доставкой. Пусть в этот светлый месяц вам и вашим близким сопутствует счастье """,
                    style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.w400),
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
