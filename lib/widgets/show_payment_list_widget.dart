import 'package:flutter/cupertino.dart';
import 'package:ostello/consts/consts.dart';
import 'package:ostello/data/paymentsData.dart';

Widget PaymentListWidget(context){
  var size = MediaQuery.of(context).size;
  return Column(
    children: List.generate(
        data["payments"]!.length,
            (index) => Column(
          children: [
            Container(
              width: size.width,
              height: 58,
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  data["payments"]![index]["image"]
                      .toString() ==
                      ""
                      ? CircleAvatar(
                    radius: 30.0,
                    backgroundColor: imgBg,
                    child: Icon(CupertinoIcons.person_crop_square,color: green,),
                  )
                      : CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        data["payments"]![index]
                        ["image"]
                            .toString()),
                    backgroundColor: Colors.transparent,
                  ),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Text(
                        data["payments"]![index]["name"]
                            .toString(),
                        style: const TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Plus Jakarta Sans"),
                      ),
                      Text(
                        data["payments"]![index]["phone"]
                            .toString(),
                        style: TextStyle(
                            color: textGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Plus Jakarta Sans"),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.end,
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Text(
                        data["payments"]![index]["type"]
                            .toString() ==
                            "PAID"
                            ? "- ₹${data["payments"]![index]["amount"].toString()}"
                            : data["payments"]![index]["type"]
                            .toString() ==
                            "RECEIVED"
                            ? "+ ₹${data["payments"]![index]["amount"].toString()}"
                            : "₹${data["payments"]![index]["amount"].toString()}",
                        style: TextStyle(
                            color: data["payments"]![index]
                            ["type"]
                                .toString() ==
                                "PAID"
                                ? Colors.red
                                : data["payments"]![index]
                            ["type"]
                                .toString() ==
                                "RECEIVED"
                                ? Colors.green
                                : black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Plus Jakarta Sans"),
                      ),
                      Text(
                        data["payments"]![index]["date"]
                            .toString(),
                        style: const TextStyle(
                            color: textGrey,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Plus Jakarta Sans"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: greyColor,
            )
          ],
        )),
  );
}