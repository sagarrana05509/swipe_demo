import 'package:get/get.dart';
import 'package:swipe_demo/home_page/home_page_controller.dart';

class HomePageBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<HomePageController>(()=> HomePageController());
  }
}