import 'package:flutter/material.dart';
import 'package:task_modul2/screens/maxsulotlar/tovarMalumotlari.dart';

class Burger extends StatefulWidget {
  bool? isTrue;
  Burger({
    Key? key,
    this.isTrue,
  }) : super(key: key);
  static List sonlarListi = [];
  static int index = 0;

  @override
  State<Burger> createState() => BurgerState();
}

class BurgerState extends State<Burger> {
  late List isPrice;
  late int index;
  late List sonlarListi;
  late int narxi;
  late String imagePath;
 
  
  @override
  void initState() {
    
    
    imagePath = "assets/images/burger.png";
    narxi = 25000;
    sonlarListi = List.generate(4, (index) => 1);
    isPrice = List.generate(4, (index) => true);
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                              nomi: "Max Burger", imagePath: imagePath))));
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
                                image: AssetImage(imagePath))),
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
                                      widget.isTrue = true;
                                      Burger.index = index;
                                      Burger.sonlarListi = sonlarListi;
                                      sonlarListi[index]--;
                                      if (sonlarListi[index] < 1) {
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
                                      widget.isTrue = true;
                                      print(widget.isTrue);
                                      sonlarListi[index]++;
                                      
                                      print(sonlarListi);

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
