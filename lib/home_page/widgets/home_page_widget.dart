import 'package:flutter/material.dart';
import 'package:swipe_demo/models/user_model.dart';
import 'package:swipe_demo/shared/utils/math_utils.dart';
import 'package:swipe_demo/widgets/base_text.dart';

class BioWidget extends StatelessWidget {
  UserModel map = UserModel();

  BioWidget({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getSize(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BaseText(
                text: map.name!,
                fontSize: getFontSize(36),
                textColor: Colors.white,
              ),
              Container(
                height: getSize(36),
                width: getSize(133),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: BaseText(
                  text: "Request",
                  fontSize: getFontSize(24),
                )),
              ),
            ],
          ),
          SizedBox(
            height: getSize(20),
          ),
          BaseText(
            text: map.bio!,
            textColor: Colors.white,
            textAlign: TextAlign.start,
          ),
          BaseText(
            text: "Interest",
            textColor: Color(0xFFDBB64D),
            fontSize: getFontSize(36),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: List.generate(
                map.interest!.length,
                (index) => Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: Color(0xFF8F5555),
                          borderRadius: BorderRadius.circular(10)),
                      child: BaseText(
                        text: map.interest![index],
                        textColor: Colors.white,
                        fontSize: getFontSize(24),
                      ),
                    )),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  BaseText(
                    text: map.rating!,
                    textColor: Color(0xFF8CB080),
                    fontSize: getFontSize(48),
                  ),
                  BaseText(text: "Rating",textColor: Color(0xFFF2FDA9),fontSize: getFontSize(16),)
                ],
              ),
              Column(
                children: [
                  BaseText(
                    text: map.review!,
                    textColor: Color(0xFF8CB080),
                    fontSize: getFontSize(48),
                  ),
                  BaseText(text: "Reviews",textColor: Color(0xFFF2FDA9),fontSize: getFontSize(16),)
                ],
              ),
              Column(
                children: [
                  BaseText(
                    text: map.charges!,
                    textColor: Color(0xFF8CB080),
                    fontSize: getFontSize(48),
                  ),
                  BaseText(text: "Charges",textColor: Color(0xFFF2FDA9),fontSize: getFontSize(16),)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
