import 'package:get/get.dart';

class FavController extends GetxController{
  RxList<String> Fruits =['Orange','Apple','Grapes','Mango'].obs;
  RxList tempFruits =[].obs;

  addFav(String value){
    tempFruits.add(value);
  }

  removeFav(String value){
    tempFruits.remove(value);
  }
}