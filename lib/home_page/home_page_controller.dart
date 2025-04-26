import 'package:get/get.dart';
import 'package:swipe_demo/models/user_model.dart';

class HomePageController extends GetxController {

  RxList<UserModel> gsonList = [
    UserModel(
        name: "Bimal P",
        interest: ["Photography", "Travel", "Cooking", "Hiking", "Art"],
        rating: "4.0",
        review: "125",
        charges: "25/hr",
        bio: "Passionate about creating meaningful"),
    UserModel(
        name: "Test 1",
        interest: [
          "Sports",
          "Travel",
          "Cooking",
        ],
        rating: "5.0",
        review: "15",
        charges: "2/hr",
        bio: "Testing"),
    UserModel(
        name: "Test 3",
        interest: [
        "Learning",
        "Travel",
        "Cooking",
        ],
    rating: "6.0",
    review: "150",
    charges: "267/hr",
    bio: "Testing 3"
    ),
  ].obs;

  Rx<UserModel> selectedValue = UserModel(
      name: "Bimal P",
      interest: ["Photography", "Travel", "Cooking", "Hiking", "Art"],
      rating: "4.0",
      review: "125",
      charges: "25/hr",
      bio: "Passionate about creating meaningful"
  ).obs;
}
