import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../home/main_home_page.dart';

class BacketProducts extends StatefulWidget {
  late int burger;
  late int sendvich;
  late int burgernarx;
  BacketProducts({
    Key? key,
    required this.burger,
    required this.sendvich,
    required this.burgernarx,
  }) : super(key: key);

  @override
  State<BacketProducts> createState() => _BacketProductsState();
}

class _BacketProductsState extends State<BacketProducts> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                              onTap: () => setState(() => widget.sendvich--),
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
                                "${widget.sendvich}",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            InkWell(
                              onTap: () => setState(() => widget.sendvich++),
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
                      "${widget.burgernarx}",
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
                              onTap: () => setState(() => widget.burger--),
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
                                "${widget.burger}",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            InkWell(
                              onTap: () => setState(() => widget.burger++),
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
                      "${widget.burgernarx}",
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Buyurtma to'lovi",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(
                        "${(widget.burger + widget.sendvich) * widget.burgernarx}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 41),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("oformit zakaz"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xfff51267D), fixedSize: Size(400, 48)),
          ),
        )
      ],
    );
  }
}
