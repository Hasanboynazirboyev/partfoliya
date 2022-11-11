import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page.dart';
import 'orders/order_page.dart';
import 'components/profile_page.dart';




class MainHomePage extends StatefulWidget {
  MainHomePage({super.key});
  static bool? isNumber = false;

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage>
    with TickerProviderStateMixin {
  late int currentIndex;
  late List pages;

  @override
  void initState() {
    currentIndex = 0;
    print("boshlangich ${MainHomePage.isNumber!}");

    pages = [
      HomePage(),
       BuyurtmaPage() ,
       ProfilPage(),
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
          selectedIconTheme: IconThemeData(color:Color.fromARGB(255, 72, 15, 125) ),
          selectedItemColor: Color.fromARGB(255, 72, 15, 125),
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                  "assets/svg/ic_home_page_active.svg",
                ),
                icon: SvgPicture.asset(
                  "assets/svg/ic_home.svg",
                ),
                label: "главное",
                ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                  "assets/svg/ic_backet_active.svg",
                ),
                icon: SvgPicture.asset(
                  "assets/svg/ic_backet.svg",
                ),
                label: "мои заказы",
                ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                  "assets/svg/ic_person_active.svg",
                ),
                icon: SvgPicture.asset(
                  "assets/svg/ic_person.svg",
                ),
                label: "личное",
                ),
          ]),
    );
  }
}
