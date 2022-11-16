import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasketPage extends StatefulWidget {
 const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  List basketList = List.generate(2, (index) => 1);
  late int burger ;
  late int sendvich ;
  @override
  void initState() {
    burger = 1;
    sendvich = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            "оформит заказ",
            style: TextStyle(fontSize: 24),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/svg/ic_delate.svg"))
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            height: 300,
            width: 370,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 25),
                      height: 96,
                      width: 96,
                      child: Image.asset(
                        "assets/images/sendvich1.png",
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 12, right: 23),
                            child: Text(
                              'Klub Sendvich\n"Yangilik"',
                              style: TextStyle(fontSize: 18),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8, left: 10, right: 10, top: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () => setState(() => sendvich--),
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: Color(0xfffE7E9E8),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                color: Colors.white,
                                child: Text(
                                  "$sendvich",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              InkWell(
                                onTap: () => setState(() => sendvich++),
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: Color(0xfffE7E9E8),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 12),
                      child: Text(
                        "19 000 sum",
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 25),
                      height: 96,
                      width: 96,
                      child: Image.asset(
                        "assets/images/burger.png",
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 12, right: 23),
                            child: Text(
                              'Max Burger',
                              style: TextStyle(fontSize: 18),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8, left: 10, right: 10, top: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () => setState(() => burger--),
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: Color(0xfffE7E9E8),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                color: Colors.white,
                                child: Text(
                                  "$burger",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              InkWell(
                                onTap: () =>  setState(() => burger++),
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: Color(0xfffE7E9E8),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 12),
                      child: Text(
                        "19 000 sum",
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Buyurtma to'lovi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      Text("511 400 sum",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,bottom: 41),
            child: ElevatedButton(onPressed: (){}, child: Text("oformit zakaz"),
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xfff51267D),fixedSize: Size(400, 48)),
            ),
          )
        ],
      ),
    );
  }
}
