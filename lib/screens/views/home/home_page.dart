import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_modul2/screens/views/products/backet/basket_page.dart';
import 'package:task_modul2/screens/views/products/max_burger_page.dart';
import 'package:task_modul2/screens/views/products/info_products.dart';
import 'package:task_modul2/screens/views/products/recomenduem_page.dart';

import '../components/searchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List isPrice;
  late List maxsulotNomlari;
  late int currentIndex;
  late List isTrue;
  late bool hammasi;
  late List imagePath;
  late List sonlarListi;
  late bool _isPositioned;
  
  @override
  void initState() {
    _isPositioned = true;
    sonlarListi = List.generate(6, (index) => 1);
    imagePath = [
      "assets/images/rec3.png",
      "assets/images/rec1.png",
      "assets/images/rec2.png",
      "assets/images/rec1.png",
    ];
    hammasi = true;
    isPrice = List.generate(4, (index) => true);
    maxsulotNomlari = [
      "Burger",
      "sendvich",
      "Lavash",
      "Kartoshka free",
      "Donar kabob",
      "Xaggi",
      "Burger",
      "Xotdog",
    ];
    isTrue = List.generate(maxsulotNomlari.length, (index) => true);
    currentIndex = 0;
    super.initState();
  }
   void _update(bool isPositioned) {
    setState(() => _isPositioned = isPositioned); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
            ),
            toolbarHeight: 90,
            title: Container(
              height: 40,
              padding: const EdgeInsets.only(left: 14,),
              margin: EdgeInsets.only(top: 40, bottom: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 243, 241, 241),
              ),
              child: TextFormField(
                onTap: () => setState(() => _isPositioned = true),
                decoration: InputDecoration(
                    hintText: "Поиск",
                    hintStyle: TextStyle(color: Color(0xfff818C99)),
                    icon: SvgPicture.asset(
                      "assets/svg/ic_search.svg",
                      width: 20,
                      height: 20,
                    ),
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
              ),
            )),
        body: Stack(
          children: [
            Positioned(
              child: CustomScrollView(
                slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: maxsulotNomlari.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            isTrue[index] = !isTrue[index];
                            currentIndex = index;


                            setState(() {});
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            margin: const EdgeInsets.only(left: 12),
                            height: 20,
                            decoration: BoxDecoration(
                                color: isTrue[index]
                                    ? Colors.white
                                    : Color(0xfff51267D),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(maxsulotNomlari[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: isTrue[index]
                                        ? Colors.black
                                        : Colors.white)),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.only(top: 16, left: 12, bottom: 8),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      "Recomenduem",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 88,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imagePath.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RecomeduemPage(
                                          imagePath: imagePath[index])));
                            }),
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: index == 0 ? 12 : 8),
                              width: 112,
                              height: 88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amber,
                                image: DecorationImage(
                                    image: AssetImage(imagePath[index])),
                              ),
                            ),
                          );
                        })),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.only(
                    top: 16,
                    left: 12,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      "Burgerlar",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                MaxBurgerPage(update: _update),
                
              ]),
            ),
            Positioned(
              bottom: 12,
              child: _isPositioned ? SizedBox(): Container(
                margin: EdgeInsets.only(left: 12, top: 12, right: 12),
                width: 370,
                height: 48,
                
                decoration: BoxDecoration(
                    color: Color(0xfff51267D),
                    borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BasketPage(),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 12,top: 12,bottom: 12),
                        width: 24,
                        height: 24,
                        child: Text("1",style: TextStyle(color: Colors.white,fontSize: 16)),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 155, 103, 165),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(height: 110),
                      Text("корзина",style: TextStyle(color: Colors.white,fontSize: 16),),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Text("25000 sum ",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

