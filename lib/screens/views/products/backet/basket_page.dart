import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_modul2/screens/views/home/main_home_page.dart';
import 'package:task_modul2/screens/views/products/backet/backet_appbar_page.dart';

class BasketPage extends StatefulWidget {
 const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  List basketList = List.generate(2, (index) => 1);
  late int burger ;
  late int sendvich ;
  late int burgernarx;
  late int sendvichnarx;
  late bool isDelate;

  @override
  void initState() {
    isDelate = true;
    burgernarx = 25000;
    sendvichnarx = 25000;

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
                onPressed: () {
                  showDialog(context: context, builder: ((context) {
                    return AlertDialog(
                      
                      titlePadding: EdgeInsets.only(left: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      
                      title: Container(
                       
                        alignment: Alignment.center,
                        child: Text("Diqqat !",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        margin: EdgeInsets.only(left: 24,right: 24,top: 12),
                        
                        ),
                      content: Container(
                        height: 50,
                        alignment: Alignment.center,
                        
                        child: Text("Savatchani tozalshni\n \t\t\t\t\t  xoxlaysizmi",style: TextStyle(fontSize: 20),)),
                        actions: [
                        Row(
                          children: [
                              ElevatedButton(
                            style: ElevatedButton.styleFrom(minimumSize: Size(144, 44),backgroundColor: Color(0xfffEBEDF0)),
                            onPressed: (() {
                              Navigator.pop(context);
                            
                          }), child: Text("orqaga",style: TextStyle(color: Colors.black))),
                          SizedBox(width: 8,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(minimumSize: Size(144, 44,),backgroundColor: Color(0xfff51267D)),
                            onPressed: (() {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: ((context) => MainHomePage())), (route) => false);
                          }), child: Text("ha",)),
                          ],
                        ),
                        ],
                    );
                  }));
                  
                },
                icon: SvgPicture.asset("assets/svg/ic_delate.svg"))
          ]),
      body:isDelate ?  BacketProducts(burger: burger,burgernarx: burgernarx,sendvich: sendvich,):SizedBox(),
    );
  }
}

