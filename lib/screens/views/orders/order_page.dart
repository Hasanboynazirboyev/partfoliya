import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_modul2/screens/views/orders/order_history_page.dart';

class BuyurtmaPage extends StatefulWidget {
  bool? burger;
  bool? sendvich;

  BuyurtmaPage({super.key, this.burger, this.sendvich});

  @override
  State<BuyurtmaPage> createState() => _BuyurtmaPageState();
}

class _BuyurtmaPageState extends State<BuyurtmaPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late List zakazBool;
  late int burgersoni;
//  late bool burger2;

  @override
  void initState() {
    // debugPrint(" burger2 "+ burger2.toString());

    zakazBool = List.generate(10, (index) => true);
    burgersoni = 1;
    setState(() {});

    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 226, 226),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 122,
        title: Text("Moи заказы",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
        bottom: PreferredSize(preferredSize: Size(400,32),
        child: Padding(
        padding: EdgeInsets.only(left: 13,bottom: 12,right: 19),
          child: Container(
            padding: EdgeInsets.all(4),
            height: 32,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.91),
              color: Color(0xffEFEFF4),
            ),
            child: TabBar(
              controller: _tabController,
               indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.96), // Creates border
                      color: Colors.white,
                    ),
              tabs: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12),
                    child: Text(
                          "История заказов",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12,right: 12),
                        child: Text(
                          "Текущие заказы",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
            ]),
          ),),),
        ),
        
      
      body: TabBarView(controller: _tabController, children: [
        OrderHistory(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/svg/ic_search_image.svg"),
            Text(
              "ничего не найденo",
              style: TextStyle(fontSize: 16, color: Color(0xfff818C99)),
            ),
          ],
        ),
      ]),
    );
  }
}
