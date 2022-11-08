import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_modul2/screens/recomenduem_page.dart';


import 'components/searchPage.dart';
import 'maxsulotlar/buyurtma/rasmiylashtirish.dart';
import 'maxsulotlar/tovarMalumotlari.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List isPrice;
  late List boolSendvich;
  late List maxsulotNomlari;
  late int currentIndex;
  late int soni;
  late List isTrue;
  late bool hammasi;
  late List imagePath;
  late int narxi;
  late bool isBurger;
  late bool isSendvich;
  late List sonlarListi;
  late int index1 ;
  late num toliqNarx;
  late num mahsulotSoni;
  

  @override
  void initState() {
    mahsulotSoni = 1;
    toliqNarx = 5000;
    index1 = 1;
    sonlarListi = List.generate(6, (index) => 1);
    boolSendvich = List.generate(2, (index) => true);
    narxi = 25000;
    imagePath = [
      "assets/images/rec3.png",
      "assets/images/rec1.png",
      "assets/images/rec2.png",
      "assets/images/rec1.png",
      "assets/images/rec2.png",
      "assets/images/rec3.png",
      "assets/images/rec1.png",
      "assets/images/rec2.png",
      "assets/images/rec3.png",
    ];
    hammasi = true;
    soni = 1;
    isBurger = false;
    isSendvich = false;
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
      "snek",
      "Garnir",
      "Cous",
      "Napitki",
      "Desert"
    ];
    isTrue = List.generate(10, (index) => true);
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 236, 236),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: appbarFun(context)),
      body: Stack(
        children: [
          Positioned(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 30,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: maxsulotNomlari.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              isTrue[index] = !isTrue[index];
                              currentIndex = index;
                              if (isTrue[0] == false && isTrue[1] == false) {
                                hammasi = false;
                              } else if (isTrue[0] == true && isTrue[1] == false) {
                                hammasi = false;
                              } else if (isTrue[0] == false && isTrue[1] == true) {
                                hammasi = false;
                              } else if (isTrue[0] == true && isTrue[1] == true) {
                                hammasi = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              height: 20,
                              decoration: BoxDecoration(
                                  color: isTrue[index]
                                      ? Colors.white
                                      : Color.fromARGB(255, 142, 32, 176),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(maxsulotNomlari[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: isTrue[index]
                                          ? Colors.black
                                          : Colors.white)),
                            ),
                          );
                        })),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 25, bottom: 5),
                  child: Text(
                    "Recomenduem",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                SizedBox(
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
                                    builder: (context) =>
                                        RecomeduemPage(imagePath: imagePath[index])));
                          }),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
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
                isTrue[0] ? SizedBox() : burgerFunc(),
                isTrue[1] ? SizedBox() : sendvichFunc(),
                hammasi
                    ? Column(
                        children: [
                          burgerFunc(),
                          sendvichFunc(),
                        ],
                      )
                    : SizedBox(),
                    
                
              ],
            ),
          ),
         Positioned(
              top: 620,
              left: 20,
              right: 20,
              child: isBurger  == true || isSendvich == true? stacsFunc() : const SizedBox(),
            ),

        ],
      ),
    );
  }

  
  stacsFunc() {
    setState(() {
      
    });
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Rasmiylashtirish();
        }));
      },
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.purple),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
                radius: 15,
                backgroundColor: Colors.black12,
                child: Text(
                  "${sonlarListi[index1]}",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )),
            const Text(
              "Корзина",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "${toliqNarx} сум ",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget recContainer({required String imagePath, Widget? pageNomi}) {
    return InkWell(
      onTap: (() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pageNomi!));
      }),
      child: Container(
        width: 112,
        height: 88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
          image: DecorationImage(image: AssetImage(imagePath)),
        ),
      ),
    );
  }

  appbarFun(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 351,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 243, 241, 241),
      ),
      child: TextFormField(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => SearchPage())));
        },
        decoration: const InputDecoration(
            hintText: "Поиск",
            icon: Icon(
              Icons.search,
              color: Colors.black45,
            ),
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none),
      ),
    );
  }
 
 
  Widget sendvichFunc(){
   return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Sendvich",
            style: TextStyle(fontSize: 28),
          ),
        ),
        GridView.builder(
            itemCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 256),
            itemBuilder: ((context, index) {
              return InkWell(
                onTap: () {
                 
                  
                  setState(() {
                    
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => TovarMalumotlari(
                              nomi: "Max Burger",
                              imagePath: "assets/images/sendvich1.png"))));
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 180,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/sendvich1.png"))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          " sendvich",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          boolSendvich[index] = !boolSendvich[index];
                          setState(() {});
                        },
                        child: boolSendvich[index]
                            ? Container(
                                alignment: Alignment.center,
                                height: 45,
                                width: 170,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 194, 187, 186),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "25000",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor:
                                          Color.fromARGB(255, 237, 234, 234),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      minimumSize: Size(32, 32),
                                    ),
                                    onPressed: () {
                                       
                                      toliqNarx = toliqNarx - narxi;
                                      
                                      sonlarListi[index]--;
                                      if (sonlarListi[index] < 1) {
                                        isBurger = true;
                                        boolSendvich[index] =
                                            !boolSendvich[index];
                                        sonlarListi[index] = 1;
                                        setState(() {});
                                      }
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
                                      "${sonlarListi[index]}",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor:
                                          Color.fromARGB(255, 230, 228, 228),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      minimumSize: const Size(32, 32),
                                    ),
                                    onPressed: () {
                                      isSendvich = true;
                                      print(sonlarListi[index]);
                                      toliqNarx =  (sonlarListi[index] +1) * narxi;
                                      sonlarListi[index]++;
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 17,
                                    ),
                                  )
                                ],
                              ),
                      ),
                    ],
                  ),
                ),
              );
            })),
       
      ],
    );

  }

  Widget burgerFunc(){
   return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Burger",
            style: TextStyle(fontSize: 28),
          ),
        ),
        GridView.builder(
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 256),
            itemBuilder: ((context, index) {
              return InkWell(
                onTap: () {
                  
                  
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => TovarMalumotlari(
                              nomi: "Max Burger", imagePath: "assets/images/burger.png"))));
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 180,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/burger.png"))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          "Max Burger",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          
                        
                          isPrice[index] = !isPrice[index];
                          setState(() {});
                        },
                        child: isPrice[index]
                            ? Container(
                                alignment: Alignment.center,
                                height: 45,
                                width: 170,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 194, 187, 186),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "$narxi",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor:
                                          Color.fromARGB(255, 237, 234, 234),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      minimumSize: Size(32, 32),
                                    ),
                                    onPressed: () {
                                      isBurger = true;
                                    toliqNarx =  toliqNarx - narxi;
                                      
                                      sonlarListi[index]--;
                                      if (sonlarListi[index] < 1) {
                                        isBurger = false;
                                        isPrice[index] = !isPrice[index];
                                        sonlarListi[index] = 1;
                                        setState(() {});
                                      }
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
                                      "${sonlarListi[index ]}",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor:
                                          Color.fromARGB(255, 230, 228, 228),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      minimumSize: const Size(32, 32),
                                    ),
                                    onPressed: () {
                                      index1 = index;
                                      for (var i = 0; i < sonlarListi.length; i++) {
                                        if (sonlarListi[i] != 1) {
                                          mahsulotSoni = sonlarListi[i] +1;

                                         
                                        }
                                      }
                                     
                                       isBurger = true;
                                       toliqNarx =  (sonlarListi[index] +1) * narxi;
                                      
                                      sonlarListi[index]++;
                                      
                                     

                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 17,
                                    ),
                                  )
                                ],
                              ),
                      ),
                    ],
                  ),
                ),
              );
            })),
        
      ],
    );
  }
}
