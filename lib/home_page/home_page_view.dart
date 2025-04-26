import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:swipe_demo/home_page/home_page_controller.dart';
import 'package:swipe_demo/shared/constants/color_constants.dart';
import 'package:swipe_demo/shared/utils/math_utils.dart';
import 'package:swipe_demo/widgets/base_text.dart';

import 'widgets/home_page_widget.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Container> cards = [
      Container(
        height: Get.height / 2,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25), // Shadow color
                spreadRadius: 0, // How much the shadow spreads
                blurRadius: 4, // Soften the shadow
                offset: Offset(0, 4), // Horizontal and vertical offset
              ),
            ]),
        alignment: Alignment.center,
        child:Image.asset('assets/images/dp.jpeg')
      ),
      Container(
        alignment: Alignment.center,
        height: Get.height / 2,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25), // Shadow color
                spreadRadius: 0, // How much the shadow spreads
                blurRadius: 4, // Soften the shadow
                offset: Offset(0, 4), // Horizontal and vertical offset
              ),
            ]),
          child:Image.asset('assets/images/dp.jpeg')
      ),
      Container(
        alignment: Alignment.center,
        height: Get.height / 2,
        decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25), // Shadow color
                spreadRadius: 4, // How much the shadow spreads
                blurRadius: 20, // Soften the shadow
                offset: Offset(0, 4), // Horizontal and vertical offset
              ),
            ]),
          child:Image.asset('assets/images/dp.jpeg',fit: BoxFit.cover,)
      )
    ];
    return Scaffold(
      backgroundColor: ColorConstants.bgColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.bgColor,
        title: BaseText(text: 'Hey, Bimal',textColor: Colors.white,),
      ),
      body: Stack(
        children: [
          SizedBox(
              height: Get.height / 2,
              child: CardSwiper(
                onSwipe: (prevIndex,currentIndex,direction){
                  controller.selectedValue.value = controller.gsonList[currentIndex!];
                  return true;
                },
                  cardBuilder:
                      (context, index, percentThresholdX, percentThresholdY) =>
                          cards[index],
                  cardsCount: cards.length)),
          LayoutBuilder(builder: (context, constraints) {
            return DraggableScrollableSheet(

              builder:
                  (BuildContext context, ScrollController scrollController) {
                return DecoratedBox(
                  decoration:  BoxDecoration(
                    color: ColorConstants.bgColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        height: 2,
                        width: getSize(20),
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                      ),
                      Obx(()=> BioWidget(map: controller.selectedValue.value,))
                    ],
                  )
                );
              },
              initialChildSize: 0.5,
              minChildSize: 0.3,
              maxChildSize: 1,


              expand: true,
              snap: true,

            );
          })
        ],
      ),
    );
  }
}
