import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ism_page.dart';


class NumberTelephone extends StatefulWidget {
   NumberTelephone({super.key});
   static String number = "";
   static TextEditingController numbercontroller = TextEditingController();

  @override
  State<NumberTelephone> createState() => _NumberTelephoneState();
}

class _NumberTelephoneState extends State<NumberTelephone> {

  late TextEditingController _numberController;
  @override
  void initState() {
   _numberController = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: _numberController,
            
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: "Telefon raqam kirgazing",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Color.fromARGB(255, 59, 5, 121),)),
                
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.black,)),
              
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 66, 8, 132),minimumSize: Size(351, 48)),
              onPressed: (){
                NumberTelephone.number = _numberController.text;
                NumberTelephone.numbercontroller = _numberController;
                
                
                Navigator.push(context, MaterialPageRoute(builder: ((context) => IsmPage())));
              }, child: Text("Davom Etish")),
          )
        ],
      ),
    );
  }
}