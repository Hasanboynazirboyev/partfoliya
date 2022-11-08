import 'package:flutter/material.dart';
import 'package:task_modul2/screens/maxsulotlar/tovarMalumotlari.dart';


class KlubSendvich extends StatefulWidget {
    bool? isTrue;
   KlubSendvich({
    Key? key,
    this.isTrue,

  }) : super(key: key);

  @override
  State<KlubSendvich> createState() => _KlubSendvichState();
}

class _KlubSendvichState extends State<KlubSendvich> {
  late List boolSendvich;
  late List sendvichImagePath;
  late List sendvichsonlarListi;
  late int narxi;

  late int index;

  late int itemCount;

  @override
  void initState() {
    itemCount = 1;
    index = 1;
    narxi = 25000;
    sendvichImagePath = [
      "assets/images/sendvich1.png",
      "assets/images/sendvich2.png"
    ];
    sendvichsonlarListi = [1, 1];

    boolSendvich = List.generate(2, (index) => true);
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
                                image: AssetImage(sendvichImagePath[index]))),
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
                                  "2500",
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
                                      sendvichsonlarListi[index]--;
                                      if (sendvichsonlarListi[index] < 1) {
                                        boolSendvich[index] =
                                            !boolSendvich[index];
                                        sendvichsonlarListi[index] = 1;
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
                                      "${sendvichsonlarListi[index]}",
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
                                      widget.isTrue = widget.isTrue;
                                      sendvichsonlarListi[index]++;
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
