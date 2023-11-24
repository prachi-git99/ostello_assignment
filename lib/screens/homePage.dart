import 'package:flutter/cupertino.dart';
import 'package:ostello/consts/consts.dart';
import 'package:ostello/utils/my_filter_section.dart';
import 'package:ostello/widgets/refer_&_earn_widget.dart';
import 'dart:math' as math;
import 'package:ostello/widgets/show_balance_widget.dart';
import 'package:ostello/widgets/show_payment_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: greyColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                wallet,
                style: TextStyle(
                    color: black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Plus Jakarta Sans"),
              ),
              const SizedBox(
                height: 8,
              ),
              ShowBalanceWidget(context),
              const SizedBox(height: 20),
              ReferEarnWidget(context),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Payments",
                    style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Plus Jakarta Sans"),
                  ),
                  Row(
                    children: [
                      Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.white,
                                    context: context,
                                    builder: (_){
                                      return MyFilterSection();
                                    }
                                );
                              },
                              icon: const Icon(
                                CupertinoIcons.slider_horizontal_3,
                                size: 20,
                              ))),
                      const Text(
                        "Filter",
                        style: TextStyle(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Plus Jakarta Sans"),
                      ),
                    ],
                  )
                ],
              ),
              PaymentListWidget(context),
            ],
          ),
        ),
      ),

    );
  }
}
