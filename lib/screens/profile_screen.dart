import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(5)),
        children: [
          SizedBox(height: AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/img_1.png"))),
              ),
              SizedBox(height: AppLayout.getHeight(10)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  SizedBox(height: AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: Color(0xFFFEF4F3)),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        const Text("Premium Status",
                            style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("Tıklandı");
                    },
                      child: Text(
                    "Edit",
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300),
                  ))
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          Divider(color: Colors.grey.shade300,),
          SizedBox(height: 8,),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18)
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.lightbulb_circle,color:Styles.primaryColor, size: 27,),
                    ),
                    SizedBox(height: 12,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You \'v got a new award", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text("You have 95 flights in a year", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9),fontSize: 16),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 25,),
          Text("Accumulated miles ", style: Styles.headLineStyle2,),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow:[
    BoxShadow(color: Colors.grey.shade200,blurRadius: 1,spreadRadius: 1)
    ]
            ),
            child:
            Column(
              children: [
                SizedBox(height: 15,),
                Text("192802", style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("23 June 2022", style: Styles.headLineStyle4.copyWith(fontSize: 16),),

                  ],
                ),
                SizedBox(height: 4,),
                Divider(color: Colors.grey.shade300,),
                SizedBox(height: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  AppColumnLayout(firstText: "23 042 ", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false),
                  AppColumnLayout(firstText: "Airline CO ", secondText: "Received Form", alignment: CrossAxisAlignment.end, isColor: false),

                ],),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24 ", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false),
                    AppColumnLayout(firstText: "McDonal's", secondText: "Received Form", alignment: CrossAxisAlignment.end, isColor: false),

                  ],),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "53 024 ", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false),
                    AppColumnLayout(firstText: "Exuma", secondText: "Received Form", alignment: CrossAxisAlignment.end, isColor: false),

                  ],),

              ],
            ),
          ),
          const SizedBox(height: 25,),
          InkWell(onTap: () => print("Tıklandı"), child: Center(child: Text("How to get more miles", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),)))
        ],
      ),
    );
  }
}
