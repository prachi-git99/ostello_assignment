import 'package:ostello/consts/consts.dart';

class MyFilterSection extends StatefulWidget {
  const MyFilterSection({Key? key}) : super(key: key);

  @override
  State<MyFilterSection> createState() => _MyFilterSectionState();
}

class _MyFilterSectionState extends State<MyFilterSection> {

  bool _show = true;
  int _radioValue = -1;
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Wrap(
        children: <Widget>[
          Center(
              child: Container(
                  height: 3.0, width: 40.0, color: Colors.grey)),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Filters",
                  style: TextStyle(
                      color: black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Avenir"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _radioValue = -1;
                    });
                  },
                  child: const Text(
                    "Clear Filter",
                    style: TextStyle(
                        color: buttonColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Avenir"),
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Radio(
                    value: 0,
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value!;
                      });
                      _handleRadioValueChange(value!);
                    },
                  ),
                  Text(
                    'All',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value!;
                      });
                      _handleRadioValueChange(value!);
                    },
                  ),
                  Text(
                    'Paid',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value!;
                      });
                      _handleRadioValueChange(value!);
                    },
                  ),
                  Text(
                    'Received',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value!;
                      });
                      _handleRadioValueChange(value!);
                    },
                  ),
                  Text(
                    'Added',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value!;
                      });
                      _handleRadioValueChange(value!);
                    },
                  ),
                  Text(
                    'Deducted',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
