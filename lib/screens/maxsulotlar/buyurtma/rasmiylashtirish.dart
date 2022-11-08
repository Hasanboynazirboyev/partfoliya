import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_modul2/screens/maxsulotlar/buyurtma/registration/oformitZakaz.dart';

import 'registration/number_TelePhone.dart';

class Rasmiylashtirish extends StatefulWidget {
 
  

  Rasmiylashtirish(
      );

  @override
  State<Rasmiylashtirish> createState() => _RasmiylashtirishState();
}

class _RasmiylashtirishState extends State<Rasmiylashtirish>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int itemCount = 2;


  @override
  void initState() {
    setState(() {});

    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 241, 243),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Rasmiylashtirish",
            style: TextStyle(fontSize: 27),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: ((context) {
                        return CupertinoAlertDialog(
                          title: Text(
                            "Diqqat !!",
                            style: TextStyle(fontSize: 20),
                          ),
                          content: Column(
                            children: [
                              Text(
                                "Savatchani tozalashni xoxlaysizmi",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 44,
                                    width: 110,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 228, 225, 225),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "orqaga",
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: SizedBox(
                                      height: 44,
                                      width: 110,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Color.fromARGB(
                                                  255, 99, 7, 71)),
                                          onPressed: () {
                                            Navigator.pop(context);
                                            itemCount = 0;
                                            setState(() {});
                                          },
                                          child: Text("Ha")),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }));

                  setState(() {});
                },
                icon: Icon(
                  Icons.delete_outline,
                  size: 27,
                ))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: itemCount,
                itemBuilder: ((context, index) {
                  return Column(children: [
                    Container(
                      height: 120,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        //  mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Image.asset(
                                  "assets/images/burger.png",
                                  width: 72,
                                  height: 45,
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Burger"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      child: Row(
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: Color.fromARGB(
                                              255, 237, 234, 234),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          minimumSize: Size(32, 32),
                                        ),
                                        onPressed: () {
                                         
                                          setState(() {});
                                        },
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.black,
                                          size: 17,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                        child: Text(
                                          "",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: Color.fromARGB(
                                              255, 230, 228, 228),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          minimumSize: const Size(32, 32),
                                        ),
                                        onPressed: () {
                                          
                                          
                                          setState(() {});
                                        },
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.black,
                                          size: 17,
                                        ),
                                      )
                                    ],
                                  )),
                                ],
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    )
                  ]);
                })),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 59, 5, 121),
                      minimumSize: Size(351, 48)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return OformitZakaz();
                    })));
                  },
                  child: Text("Rasmiylashtirish")),
            )
          ],
        ));
  }
}
