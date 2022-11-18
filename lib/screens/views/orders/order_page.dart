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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 122,
        title: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            "Moи заказы",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(400, 32),
          child: Padding(
            padding: EdgeInsets.only(left: 13, bottom: 12, right: 19),
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
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Text(
                        "История заказов",
                        style: TextStyle(fontSize: 13, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Text(
                        "Текущие заказы",
                        style: TextStyle(fontSize: 13, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        ListView.separated(
          padding: EdgeInsets.all(12),
          itemCount: 2,
          itemBuilder: (context, index) {
            return OrderHistory();
          },
          separatorBuilder: (context, index) => SizedBox(height: 12),
        ),
        ListView.separated(
          padding: EdgeInsets.all(12),
          itemCount: 7,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(12),
              height: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text("Заказ №1342$index",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("109 540  сум",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      SizedBox(
                        width: 220,
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Color(0xfffB8B8B8),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("1$index.03.2021",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfff818C99))),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 12),
        ),
      ]),
    );
  }
}
