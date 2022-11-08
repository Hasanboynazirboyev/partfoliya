import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        toolbarHeight: 120,
        title: Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Мои заказы",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.amber,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), // Creates border
                      color: Colors.white,
                    ),
                    tabs: const [
                      Text(
                        "Buyurtma tarixi",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Text(
                        "Hozirgi buyurtma",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        Text("data"),
        hozirgiZakaz(),
      ]),
    );
  }

  Widget hozirgiZakaz() {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: 144,
            width: 351,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Status Zakaz No 1"),
                Text("Zakaz oformlen"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 152, 7, 116),
                      child: IconButton(
                        icon: Icon(CupertinoIcons.bookmark),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      color: zakazBool[0]
                          ? Color.fromARGB(255, 204, 199, 199)
                          : Color.fromARGB(255, 152, 7, 116),
                      width: 85,
                      height: 4,
                    ),
                    CircleAvatar(
                      backgroundColor: zakazBool[0]
                          ? Color.fromARGB(255, 212, 207, 207)
                          : Color.fromARGB(255, 152, 7, 116),
                      child: IconButton(
                        color: zakazBool[0]
                            ? Color.fromARGB(255, 152, 7, 116)
                            : Color.fromARGB(255, 204, 199, 199),
                        icon: Icon(CupertinoIcons.bag),
                        onPressed: () {
                          zakazBool[0] = !zakazBool[0];
                          if (zakazBool[1] == false) {
                            zakazBool[1] = true;
                            setState(() {});
                          }
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      color: zakazBool[1] == true || zakazBool[0] == true
                          ? Color.fromARGB(255, 204, 199, 199)
                          : Color.fromARGB(255, 152, 7, 116),
                      width: 85,
                      height: 4,
                    ),
                    CircleAvatar(
                      backgroundColor:
                          zakazBool[1] == true || zakazBool[0] == true
                              ? Color.fromARGB(255, 212, 207, 207)
                              : Color.fromARGB(255, 152, 7, 116),
                      child: IconButton(
                        color: zakazBool[1]
                            ? Color.fromARGB(255, 152, 7, 116)
                            : Color.fromARGB(255, 204, 199, 199),
                        icon: Icon(CupertinoIcons.checkmark_square),
                        onPressed: () {
                          if (zakazBool[1] == false || zakazBool[0] == false) {
                            zakazBool[1] = !zakazBool[1];
                          }
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
