import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoProductsPage extends StatefulWidget {
  @override
  State<InfoProductsPage> createState() => _InfoProductsPageState();
}

class _InfoProductsPageState extends State<InfoProductsPage> {
  late int son;
  @override
  void initState() {
    son = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Burger")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
          children: [
             Container(
            height: 325,
            alignment: Alignment.center,
            color: Color.fromRGBO(238, 233, 242, 1),
            child: Container(
                child: Image.asset(
              "assets/images/burger.png",
              fit: BoxFit.cover,
              width: 214,
              height: 200,
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Max Burger",
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  """Burgerlar juda mazali va hozirgi kunda bizda chegirma ketmoqda agar 2 ta burger harid qilsangiz uchinchisi tekinga qo'shib beriladi """,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          ],
         ),
          Padding(
            padding: const EdgeInsets.only(bottom: 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    son--;
                    if (son == 0) {
                      son = 1;
                      setState(() {});
                    }
                    setState(() {});
                  },
                  child: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Color(0xfffE7E9E8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 44,
                  height: 44,
                  color: Colors.white,
                  child: Text(
                    "${son}",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                InkWell(
                  onTap: () {
                    son++;
                    setState(() {});
                  },
                  child: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Color(0xfffE7E9E8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
                ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    backgroundColor: Color(0xfff51267D) ,minimumSize:Size(202, 44) ),
                    onPressed: (() {}), child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dobavit      "),
                        Text("     ${son * 25000} sum "),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
