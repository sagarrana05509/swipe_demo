import 'package:get/get.dart';
import 'package:swipe_demo/home_page/home_page_bindings.dart';
import 'package:swipe_demo/home_page/home_page_view.dart';



part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePageView(),
      binding: HomePageBindings(),
      children: [],
    ),
  ];
}
