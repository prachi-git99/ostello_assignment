import 'package:ostello/consts/consts.dart';
import 'package:ostello/widgets/add_money_widget.dart';
import 'package:ostello/widgets/refer_&_earn_widget.dart';
import 'package:ostello/widgets/show_balance_widget.dart';
import 'package:ostello/widgets/show_wallet_widget.dart';

class RechargeScreen extends StatelessWidget {
  const RechargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: greyColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
              const SizedBox(height: 5,),
              ShowWalletWidget(context),
              const SizedBox(height: 15),
              AddMoneyWidget(context),
              const SizedBox(height: 15),
              ReferEarnWidget(context),


            ],
          ),
        ),
      ),
    );
  }
}
