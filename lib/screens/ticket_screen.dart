import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';



class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              SizedBox(height: AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              SizedBox(height : AppLayout.getHeight(20)),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              SizedBox(height : AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Flutter",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "5221 364869",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "0055 444 77147",
                          secondText: "Number of E-Ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "B2SGB2",
                          secondText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa-512.jpg",
                                  scale: 11,
                                ),
                                Text(
                                  "  *** 4020 ",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            Text(
                              "Payment Method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                AppColumnLayout(
                                  firstText: "\$249.99",
                                  secondText: " Price",
                                  alignment: CrossAxisAlignment.end,
                                  isColor: false,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              /* Barkod */

              SizedBox(height: AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],

                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
