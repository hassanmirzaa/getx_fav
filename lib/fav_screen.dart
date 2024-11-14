import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fav/home_controller.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
FavController controller = Get.put(FavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Favs"),
        
      ),
      body: ListView.builder(
        itemCount: controller.tempFruits.length,
        itemBuilder: (context, index) {
        return Obx(() {
          return ListTile(
             
              title: Text(controller.tempFruits[index]),
              trailing: IconButton(onPressed: (){
               
              }, icon: Icon(Icons.favorite,color: Colors.red,))
            );
        }
           
        );
      },) ,
    );
  }
}