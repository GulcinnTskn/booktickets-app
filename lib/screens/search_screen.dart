import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/icon_test_widgets.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {

  const SearchScreen({Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          SizedBox(height: AppLayout.getHeight(40)),
          Text(
            "What are \nyou looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          SizedBox(height:AppLayout.getHeight(20)),
          const AppTicketTabs(firstTab: "Airlines Tickets",secondTab: "Hotels",),
          SizedBox(height:AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height:AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height:AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical:AppLayout.getWidth(16),horizontal: AppLayout.getWidth(12) ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              color: Color(0xD91130CE)
            ),
            child:
               Center(
                 child: Text("Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white, fontSize: 17)
            ),
               ),
          ),
          SizedBox(height:AppLayout.getHeight(40)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
          SizedBox(height:AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  boxShadow: [BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/ucakici.png")
                        )
                      ),
                    ),
                    SizedBox(height:AppLayout.getHeight(10)),
                    Text("%20 discount on the early booking of this flight, Don't miss out this chance.",style: Styles.headLineStyle2)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount \nfor survey ", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                            SizedBox(height:AppLayout.getHeight(10)),
                            Text("Take the survey about our services and get discount", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18))

                          ],
                        ),
                      ),
                      Positioned(right: -45, top: -40, child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent
                        ),
                      ),)
                    ],
                  ),
                  SizedBox(height:AppLayout.getHeight(15)),

                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(190),
                    padding : EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                      color: const Color(0xFFEC6545)
                    ),
                    child: Column(
                      children: [
                        Text("Take love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                        SizedBox(height:AppLayout.getHeight(5)),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '♥',
                              style: TextStyle(fontSize: 25)
                            ),
                            TextSpan(
                                text: '♥',
                                style: TextStyle(fontSize: 40)
                            ),
                            TextSpan(
                                text: '♥',
                                style: TextStyle(fontSize: 25)
                            ),
                          ]
                        ))
  
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
