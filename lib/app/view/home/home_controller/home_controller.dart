import 'package:get/get.dart';
import 'package:prctical_exam/app/view/home/model/home_model.dart';

class HomeController extends GetxController{

  List<HomeModel> newProduct = <HomeModel> [
    HomeModel(
      image: "assets/images/Like.svg",
      subImage: "assets/images/glucon-d.png",
      name: "Glucon-D Instant Energy \nDrink",
      price: "\$40.00",
    ),
    HomeModel(
      image: "assets/images/Like.svg",
      subImage: "assets/images/pears.png",
      name: "Pears Pure and Gentle \nBody Wash 250 ml",
      price: "\$50.00",
    ),
  ];
  List<HomeModel> popularProduct = <HomeModel> [
    HomeModel(
      image: "assets/images/Like.svg",
      subImage: "assets/images/Dolo.png",
      name: "Dolo-650 Strip of 15 \nTablet",
      price: "\$55.00",
    ),
    HomeModel(
      image: "assets/images/Like.svg",
      subImage: "assets/images/Bevon.png",
      name: "Bevon Bottle of 15 ml \nDrops",
      price: "\$85.00",
    ),
  ];
  List<HomeModel> recProduct = <HomeModel> [
    HomeModel(
      image: "assets/images/Like.svg",
      subImage: "assets/images/Enerzal.png",
      name: "Enerzal Zero Orange \nRehydration",
      price: "\$55.00",
    ),
    HomeModel(
      image: "assets/images/Like.svg",
      subImage: "assets/images/Gastica.png",
      name: "Gastica Bottle pf 15 ml \nDrops",
      price: "\$48.00",
    ),
  ];
  List<HomeModel> articleProduct = <HomeModel> [
    HomeModel(
      subImage: "assets/images/Healthy.png",
      name: "Healthy Living Tips",
      title: "Healthy practical advice on maintaining\na healthy lifestyle",
      date: "28 mar,2024 ",
      image: "assets/images/Ellipse.svg",
      time: "10 min read",
    ),
    HomeModel(
      subImage: "assets/images/Mental.png",
      name: "Mental Health Matters",
      title: "Mental health is an important aspect of \noverall well-being",
      date: "27 mar,2024 ",
      image: "assets/images/Ellipse.svg",
      time: "10 min read",
    ),
  ];

}