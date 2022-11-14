import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 18,right: 8,top: 12,),
          
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            
            height: 147,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16,left: 12,bottom: 4),
                  child: Text("Status Zakaz No 1",style: TextStyle(fontSize: 24),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16,left: 12),
                  child: Text("Zakaz oformlen",style: TextStyle(fontSize: 20,color: Color(0xfff51267D))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,bottom: 16,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xfff51267D),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: 44,
                      width: 44,
                      child: SvgPicture.asset("assets/svg/ic_save_active.svg"),
                     ),
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: 6),
                      height: 4,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xfff51267D),
                        borderRadius: BorderRadius.circular(12),
                      ),
                     ),
                     Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xfffEBEDF0),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: 44,
                      width: 44,
                      child: SvgPicture.asset("assets/svg/ic_bag.svg"),
                     ),
                     Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      height: 4,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xfffEBEDF0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                     ),
                     Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xfffEBEDF0),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: 44,
                      width: 44,
                      child: SvgPicture.asset("assets/svg/ic_square.svg"),
                     ),
                     
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}