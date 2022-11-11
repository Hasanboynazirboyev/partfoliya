import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaxBurgerPage extends StatefulWidget {
  final ValueChanged<bool> update;
  MaxBurgerPage({
    Key? key,
    required this.update,
  }) : super(key: key);

  @override
  State<MaxBurgerPage> createState() => _MaxBurgerPageState();
}

class _MaxBurgerPageState extends State<MaxBurgerPage> {
  List isPrice = List.generate(4, (index) => true);
  bool isBurger = true;
  late num toliqNarx;
  late List sonlarListi;
  @override
  void initState() {
    sonlarListi = List.generate(6, (index) => 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(childCount: 4, (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: index == 0 || index == 2 ? 12 : 0,
                  right: index == 1 || index == 3 ? 12 : 0,
                  top: index == 0 || index == 1 ? 12 : 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              width: 170,
              height: 222,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(81, 38, 125, 0.1),
                    ),
                    height: 124,
                    width: 180,
                    child: Image.asset(
                      "assets/images/burger.png",
                      height: 106,
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 16),
                    child: Text(
                      "Max Burger",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        isBurger = false;
                        widget.update(isBurger);

                        isPrice[index] = !isPrice[index];
                        setState(() {});
                      },
                      child: isPrice[index]
                          ? Container(
                              margin: EdgeInsets.only(
                                  top: 14, left: 8, right: 8, bottom: 8),
                              alignment: Alignment.center,
                              height: 40,
                              width: 154,
                              decoration: BoxDecoration(
                                  color: Color(0xfffE7E9E8),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "25000",
                                style: TextStyle(fontSize: 18),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 8, left: 10, right: 10, top: 14),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      sonlarListi[index]--;
                                      if (sonlarListi[index] < 1) {
                                        isBurger = true;
                                        widget.update(isBurger);
                                        isPrice[index] = !isPrice[index];
                                        sonlarListi[index] = 1;
                                        setState(() {});
                                      }
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
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
                                      "${sonlarListi[index]}",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      sonlarListi[index]++;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
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
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 237,
          mainAxisSpacing: 12,
          crossAxisSpacing: 11,
        ));
  }
}
