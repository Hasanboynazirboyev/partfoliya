import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Home_page.dart';
import 'maxsulotlar/buyurtma/buyurtma_page.dart';
import 'maxsulotlar/buyurtma/registration/number_TelePhone.dart';
import 'maxsulotlar/buyurtma/registration/profil_page.dart';

class BottomNavBarPage extends StatefulWidget {
  BottomNavBarPage({super.key});
  static bool? isNumber = false ;
 

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage>
    with TickerProviderStateMixin {
  late int currentIndex;
  late List pages;
  

  @override
  void initState() {
    

    currentIndex = 0 ;
    print("boshlangich ${BottomNavBarPage.isNumber!}");
    
    pages = [
      HomePage(),
      BottomNavBarPage.isNumber! ? BuyurtmaPage() : NumberTelephone(),
      BottomNavBarPage.isNumber! ? ProfilPage() : NumberTelephone(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          selectedItemColor: Color.fromARGB(255, 72, 15, 125),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}
