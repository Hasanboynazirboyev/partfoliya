import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OformitZakaz extends StatefulWidget {
  const OformitZakaz({super.key});

  @override
  State<OformitZakaz> createState() => _OformitZakazState();
}

class _OformitZakazState extends State<OformitZakaz> {
  late List checkListTile;

  @override
  void initState() {
    checkListTile = List.generate(10, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rasmiylashtirish"),
      ),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Yetqazib berish turi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                  leading: Image.asset(
                    "assets/images/telefon.png",
                    width: 40,
                  ),
                  title: Text("Telefon orqali"),
                  onTap: () {}),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset(
                    "assets/images/dostavka.png",
                    width: 40,
                  ),
                  title: Text("Mashina orqali"),
                  onTap: () {}),
            ],
          ),
        ),
        Container(
          alignment: checkListTile[3] ? Alignment.center : Alignment.topCenter,
          // height: checkListTile[3] ? 64 : 200,
          padding: EdgeInsets.only(left: 12),
          margin: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ExpansionTile(
            childrenPadding: EdgeInsets.all(8.0),
            title: Text("Filialni tanlang", style: TextStyle(fontSize: 18)),
            children: [
              ListTile(
                  leading: Container(
                    height: 77,
                    width: 88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/xadra1.png")),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Xadra",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "30 navoiy shox ko'chasi",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Text(
                        "5 km",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  trailing: checkListTile[4]
                      ? Icon(
                          Icons.check,
                          color: Colors.blue,
                        )
                      : SizedBox(),
                  onTap: () {
                    checkListTile[4] = !checkListTile[4];
                    checkListTile[5] = false;
                    checkListTile[6] = false;
                    checkListTile[7] = false;
                    print("bosildi");
                    setState(() {});
                  }),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                  leading: Container(
                    height: 77,
                    width: 88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/xadra2.png")),
                    ),
                  ),
                  trailing: checkListTile[5]
                      ? Icon(
                          Icons.check,
                          color: Colors.blue,
                        )
                      : SizedBox(),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Xadra",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "30 navoiy shox ko'chasi",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Text(
                        "5 km",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  onTap: () {
                    checkListTile[4] = false;
                    checkListTile[5] = !checkListTile[5];
                    checkListTile[6] = false;
                    checkListTile[7] = false;
                    setState(() {});
                  }),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                  leading: Container(
                    height: 77,
                    width: 88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/xadra3.png")),
                    ),
                  ),
                  trailing: checkListTile[6]
                      ? Icon(
                          Icons.check,
                          color: Colors.blue,
                        )
                      : SizedBox(),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Xadra",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "30 navoiy shox ko'chasi",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Text(
                        "5 km",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  onTap: () {
                    checkListTile[4] = false;
                    checkListTile[5] = false;

                    checkListTile[6] = !checkListTile[6];
                    checkListTile[7] = false;
                    setState(() {});
                  }),
              ListTile(
                  leading: Container(
                    height: 77,
                    width: 88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/xadra4.png")),
                    ),
                  ),
                  trailing: checkListTile[7]
                      ? Icon(
                          Icons.check,
                          color: Colors.blue,
                        )
                      : SizedBox(),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Xadra",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "30 navoiy shox ko'chasi",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Text(
                        "5 km",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  onTap: () {
                    checkListTile[4] = false;
                    checkListTile[5] = false;
                    checkListTile[6] = false;
                    checkListTile[7] = !checkListTile[7];
                    setState(() {});
                  }),
            ],
          ),
        ),
        Container(
          height: 250,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "To'lov  turi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                  leading: Image.asset(
                    "assets/images/naqt.png",
                    width: 40,
                  ),
                  title: Text(
                    "Naqt",
                  ),
                  trailing: checkListTile[0]
                      ? Icon(
                          Icons.check,
                          color: Colors.blue,
                        )
                      : SizedBox(),
                  onTap: () {
                    checkListTile[0] = !checkListTile[0];
                    checkListTile[1] = false;
                    checkListTile[2] = false;
                    print("bosildi");
                    setState(() {});
                  }),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset("assets/images/click.png", width: 40),
                  trailing: checkListTile[1]
                      ? Icon(
                          Icons.check,
                          color: Colors.blue,
                        )
                      : SizedBox(),
                  title: Text(
                    "Click orqali",
                  ),
                  onTap: () {
                    checkListTile[0] = false;
                    checkListTile[1] = !checkListTile[0];
                    checkListTile[2] = false;
                    setState(() {});
                  }),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset(
                    "assets/images/payme.png",
                    width: 40,
                  ),
                  trailing: checkListTile[2]
                      ? Icon(
                          Icons.check,
                          color: Colors.blue,
                        )
                      : SizedBox(),
                  title: Text(
                    "Payme orqali",
                  ),
                  onTap: () {
                    checkListTile[0] = false;
                    checkListTile[1] = false;
                    checkListTile[2] = !checkListTile[0];
                    setState(() {});
                  }),
            ],
          ),
        ),
        Container(
          height: 130,
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 10),
                child: Text(
                  "Izohlar",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 351,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 243, 241, 241),
                ),
                child: TextFormField(
                  onTap: () {},
                  decoration: const InputDecoration(
                      hintText: "\t\tIzoh qoldiring",
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: 351,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mahsulot Narxlari",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "55 000 sum",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Max Burger ",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "25000",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sendvich ",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "25000",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Umumiy narx",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "60 000 sum",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: Size(351, 48)),
              onPressed: () {},
              child: Text("Rasmiylashtirish")),
        )
      ]),
    );
  }
}
