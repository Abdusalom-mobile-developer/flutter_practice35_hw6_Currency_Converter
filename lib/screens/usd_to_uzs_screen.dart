import 'package:flutter/material.dart';
import 'package:flutter_practice35_hw6/config/colors.dart';
import 'package:flutter_practice35_hw6/config/texts.dart';
import 'package:flutter_practice35_hw6/screens/uzs_to_usd_screen.dart';

class UsdToUzsScreen extends StatefulWidget {
  static const String id = "usd_to_uzs_screen";
  const UsdToUzsScreen({
    super.key,
  });

  @override
  State<UsdToUzsScreen> createState() => _UsdToUzsScreenState();
}

class _UsdToUzsScreenState extends State<UsdToUzsScreen> {
  final TextEditingController  _controller = TextEditingController();
  String calculatedValue = "0";
  String calculateCurrency() {
    double result = double.parse(_controller.text) * 12744.91;
    return result.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.bgColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 85),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //todo: Top Texts Part
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      Texts.appName,
                      style: TextStyle(
                          color: ColorsClass.darkPurple,
                          fontSize: MediaQuery.of(context).size.width / 13.5,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 40,
                    ),
                    Text(
                        textAlign: TextAlign.center,
                        Texts.shortInfo,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 21.8,
                            fontWeight: FontWeight.bold,
                            color: ColorsClass.grey2)),
                  ],
                ),
                //todo: Middle Currency Entering Part
                Container(
                  height: MediaQuery.of(context).size.height / 2.7,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 35, bottom: 30),
                  decoration: BoxDecoration(
                      color: ColorsClass.white,
                      boxShadow: [
                        BoxShadow(
                            color: ColorsClass.black.withOpacity(0.1),
                            blurRadius: 17,
                            offset: const Offset(0, -2)),
                      ],
                      borderRadius: BorderRadius.circular(14)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 15, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //todo: Middle top part
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(Texts.middleText1,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ColorsClass.grey2,
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                22,
                                      )),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  40),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              8,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              8,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/flag_us.jpg"))),
                                        ),
                                        Text(
                                          Texts.currency1,
                                          style: TextStyle(
                                              color: ColorsClass.darkPurple,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  13.5,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: 30,
                                          color: ColorsClass.grey2,
                                        )
                                      ],
                                    )),
                                    Expanded(
                                        child: Container(
                                      padding: const EdgeInsets.only(right: 0),
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: Transform.translate(
                                        offset: const Offset(0, 18),
                                        child: TextField(
                                          controller: _controller,
                                          onEditingComplete: () {
                                            setState(() {
                                              if (_controller.text.isNotEmpty) {
                                                calculatedValue =
                                                    calculateCurrency();
                                              }
                                              FocusScope.of(context).unfocus();
                                            });
                                          },
                                          onSubmitted: (value) {
                                            setState(() {
                                              if (_controller.text.isNotEmpty) {
                                                calculatedValue =
                                                    calculateCurrency();
                                              }
                                              FocusScope.of(context).unfocus();
                                            });
                                          },
                                          onTapOutside: (event) {
                                            setState(() {
                                              if (_controller.text.isNotEmpty) {
                                                calculatedValue =
                                                    calculateCurrency();
                                              }
                                              FocusScope.of(context).unfocus();
                                            });
                                          },
                                          onTap: () {
                                            setState(() {
                                              _controller.clear();
                                            });
                                          },
                                          maxLength: 1,
                                          smartDashesType:
                                              SmartDashesType.disabled,
                                          style: const TextStyle(
                                            color: ColorsClass.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23,
                                          ),
                                          keyboardType:
                                              const TextInputType.numberWithOptions(),
                                          textAlign: TextAlign.end,
                                          decoration: const InputDecoration(
                                            hintText: "0",
                                            hintStyle: TextStyle(
                                              color: ColorsClass.black,
                                              fontSize: 23,
                                            ),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                      ),
                                    )),
                                  ],
                                )
                              ],
                            )),
                        //todo: Middle middle part
                        Expanded(
                            child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 2,
                              width: double.infinity,
                              decoration:
                                  const BoxDecoration(color: ColorsClass.grey2),
                            )),
                            Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorsClass.darkPurple),
                              height: MediaQuery.of(context).size.width / 6,
                              width: MediaQuery.of(context).size.width / 6,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, UzsToUsdScreen.id);
                                },
                                child: Icon(
                                  Icons.repeat_sharp,
                                  size: MediaQuery.of(context).size.width / 11,
                                  color: ColorsClass.white,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              height: 2,
                              width: double.infinity,
                              decoration:
                                  const BoxDecoration(color: ColorsClass.grey2),
                            )),
                          ],
                        )),
                        //todo: Middle bottom part
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(Texts.middleText2,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ColorsClass.grey2,
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                22,
                                      )),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  40),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              8,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              8,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/flag_uz.jpg"))),
                                        ),
                                        Text(
                                          Texts.currency2,
                                          style: TextStyle(
                                              color: ColorsClass.darkPurple,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  13.5,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: 30,
                                          color: ColorsClass.grey2,
                                        )
                                      ],
                                    )),
                                    Expanded(
                                        child: Container(
                                      padding: const EdgeInsets.only(right: 7),
                                      alignment: Alignment.centerRight,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      height: 45,
                                      child: Text(
                                        calculatedValue,
                                        style: const TextStyle(
                                            color: ColorsClass.black,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                //todo: Bottom Texts Part
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        textAlign: TextAlign.start,
                        Texts.bottomText,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: ColorsClass.grey2)),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                        textAlign: TextAlign.start,
                        Texts.currentRateUsToUz,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 19,
                            fontWeight: FontWeight.bold,
                            color: ColorsClass.black))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
