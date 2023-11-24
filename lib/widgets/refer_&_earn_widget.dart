import 'package:ostello/consts/consts.dart';

Widget ReferEarnWidget(context){
  var size = MediaQuery.of(context).size;
  return Container(
    width: size.width,
    height: 207,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: greyColor, width: 2)),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            referHeading,
            style: TextStyle(
                color: black,
                fontSize: 14,
                fontWeight: FontWeight.w800,
                fontFamily: "Plus Jakarta Sans"),
          ),
          const Text(
            referText,
            style: TextStyle(
                color: black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: "Plus Jakarta Sans"),
          ),
          SizedBox(
            width: size.width,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: buttonColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("Refer & Earn"),
            ),
          )
        ],
      ),
    ),
  );
}