import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fav/fav_screen.dart';
import 'package:getx_fav/home_controller.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  FavController controller = Get.put(FavController());

  
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Fav App"),
        actions: [
          IconButton(onPressed: (){
            Get.to(FavScreen());
          }, icon: Icon(Icons.favorite))
        ],
      ),
      body: ListView.builder(
        itemCount: controller.Fruits.length,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: (){
              if(controller.tempFruits.contains(controller.Fruits[index])){
                controller.removeFav(controller.Fruits[index]);
              }
              else {
              controller.addFav (controller.Fruits[index]);

              }
              
            },
            title: Text(controller.Fruits[index]),
            trailing: Obx(
              () {
                return Icon(Icons.favorite, color: controller.tempFruits.contains(controller.Fruits[index]) ? Colors.red : Colors.white, );
              },
            )
          ),
        );
      },),
    );
  }
}