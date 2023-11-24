import 'package:ostello/consts/consts.dart';
import 'package:ostello/widgets/add_money_button.dart';

Widget AddMoneyWidget(context) {
  var size = MediaQuery.of(context).size;
  return Container(
    width: size.width,
    height: 260,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: greyColor, width: 2)),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Add Money To Wallet",
            style: TextStyle(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: "Plus Jakarta Sans"),
          ),
          SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: greyColor, width: 2)),
                  hintText: 'Enter Amount',
                  hintStyle: const TextStyle(color: greyColor)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AddMoneyButton(context, money: "200"),
              const SizedBox(width: 2,),
              AddMoneyButton(context, money: "500"),
              const SizedBox(width: 2,),
              AddMoneyButton(context, money: "1000"),
              const SizedBox(width: 2,),
              AddMoneyButton(context, money: "1200"),
            ],
          ),
          SizedBox(
            width: size.width,
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
              ),
              child: const Text(
                "Proceed to recharge",
                style: TextStyle(
                    color: white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Avenir"),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
