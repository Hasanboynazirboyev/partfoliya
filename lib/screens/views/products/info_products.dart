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

      appBar: AppBar(title: Text("Бургеры",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),centerTitle: true,),
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
                  "Макс Бургер",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  """Закручен со вкусом! Кусочки нежнейшего куриногофиле в хрустящей остерой чили оригинальнойпанировке с сочными листьями салата, кусочкамипомидора и нежным соусом мы завернули впшеничную лепешку и поджарили в тостере """,
                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xfff818C99)),
                ),
              ],
            ),
          ),
          ],
         ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
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
                        Text("Добавить",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
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
