import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../maxsulotlar/tovarMalumotlari.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late List maxsulotNomlari;
  late List maxsulotNarxlari;
  late String searchObject;
  late bool topildimi;
  late int index;
  late List imagePath;
  @override
  void initState() {
    imagePath = [
      "assets/images/burger2.png",
      "assets/images/sendvich1.png",
      "assets/images/sendvich2.png",
    ];
    maxsulotNarxlari = [
      "25000",
      "20000",
      "30000",
    ];
    topildimi = false;
    index = 0;

    maxsulotNomlari = [
      "burger",
      "sendvich",
      "lavash",
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: 267,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 243, 241, 241),
              ),
              child: TextFormField(
                onChanged: (value) {
                  debugPrint(value);
                  for (var i = 0; i < maxsulotNomlari.length; i++) {
                    if (maxsulotNomlari[i] == value) {
                      searchObject = maxsulotNomlari[i];
                      index = i;

                      topildimi = true;
                      setState(() {});
                    }
                    
                  }
                },
                onTap: () {},
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
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "orqaga",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ],
        ),
      ),
      body: topildimi
          ? Column(
              children: [
                Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => TovarMalumotlari(
                                    imagePath: imagePath[index],
                                    nomi: maxsulotNomlari[index],
                                  ))));
                    },
                    leading: Image.asset(
                      imagePath[index],
                      cacheHeight: 30,
                      cacheWidth: 30,
                    ),
                    title: Text(searchObject.toString()),
                    trailing: Text(maxsulotNarxlari[index] + " so'm"),
                  ),
                ),
              ],
            )
          : SizedBox(),
    );
  }
}
