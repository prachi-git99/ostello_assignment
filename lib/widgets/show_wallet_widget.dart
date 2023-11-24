import 'package:flutter/cupertino.dart';
import 'package:ostello/consts/consts.dart';
// import 'package:ostello/screens/rechargeScreen.dart';

Widget ShowWalletWidget(context){
  var size = MediaQuery.of(context).size;
  return Container(
    width: size.width,
    height: 96,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: greyColor, width: 2)),
    child: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                totalBalance,
                style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Plus Jakarta Sans"),
              ),
              Text(
                "₹500.00",
                style: TextStyle(
                    color: black,
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Avenir"),
              ),
            ],
          ),
          Icon(Icons.account_balance_wallet,size: 58,color: buttonColor,)
        ],
      ),
    ),
  );
}