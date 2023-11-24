import 'package:ostello/consts/consts.dart';
import 'package:ostello/screens/rechargeScreen.dart';


Widget ShowBalanceWidget(context){
  var size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.symmetric(vertical:10,horizontal: 15),
    width: size.width,
    height: 96,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: greyColor, width: 2)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Column(
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
              "₹$balance",
              style: TextStyle(
                  color: black,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Avenir"),
            ),
          ],
        ),
        SizedBox(width:5,),
        Expanded(
          child: SizedBox(
            width:size.width * 0.4,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => RechargeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
              ),
              child: const Text(
                buttonText,
                style: TextStyle(
                    color: white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Avenir"),
              ),
            ),
          ),
        )
      ],
    ),
  );
}