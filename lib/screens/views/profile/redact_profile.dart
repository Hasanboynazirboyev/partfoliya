import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RedactProfil extends StatefulWidget {
  
  String ism;
  String familya;

  String number;
  RedactProfil(
      {super.key,
      required this.ism,
      required this.familya,
      required this.number,
      
      });

  @override
  State<RedactProfil> createState() => _RedactProfilState();
}

class _RedactProfilState extends State<RedactProfil> {
  late List redactBool;

  late TextEditingController _namecontroller;
  late TextEditingController _surenamecontroller;
  late TextEditingController _numbercontroller;
  @override
  void initState() {
    _namecontroller = TextEditingController(text: widget.ism);
    _surenamecontroller = TextEditingController(text:widget.familya);
    _numbercontroller = TextEditingController(text: widget.number);

    redactBool = List.generate(3, (index) => true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profilni o'zgartirish"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(
            height: 12,
          ),
              Text(
                "\t\t\tFamilya",
                style: TextStyle(fontSize: 16),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(12),
                  child: TextField(
                    
                    controller: _surenamecontroller,
                    decoration: InputDecoration(
                      
                      hintText: "Familya kirgazing",
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 12),
                      focusedBorder: OutlineInputBorder(
                        
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 59, 5, 121),
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                onTap: () {
                  redactBool[0] = false;
                  setState(() {});
                },
              ),
              Text(
                "\t\t\tIsm",
                style: TextStyle(fontSize: 16),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(12),
                  child: TextField(
                    controller: _namecontroller,
                    decoration: InputDecoration(
                      hintText: "Ism kirgazing",
                      contentPadding: EdgeInsets.only(left: 12),

                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 59, 5, 121),
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  redactBool[1] = false;
                  setState(() {});
                },
              ),
              Text(
                "\t\t\Telefo raqam",
                style: TextStyle(fontSize: 16),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(12),
                  child: TextField(
                    controller: _numbercontroller,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 12),
                      hintText: "raqam kirgazing",
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 59, 5, 121),
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  redactBool[2] = false;
                  setState(() {});
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 66, 8, 132),
                    minimumSize: Size(351, 48)),
                onPressed: ()  {
                  Navigator.pop(context);
                },
                child: Text("Saqalash ")),
          )
        ],
      ),
    );
  }
}
