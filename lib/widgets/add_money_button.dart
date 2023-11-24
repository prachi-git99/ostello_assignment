import 'package:ostello/consts/consts.dart';

Widget AddMoneyButton(context, {required String money}){
  return Expanded(
    child: SizedBox(
      width: 70,
      height: 34,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: white,
          ),
          child: Text(
            "+₹$money",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: black
            ),
          )),
    ),
  );
}