import 'package:flutter/material.dart';
import 'package:flutter_simple_cart/my_controller.dart';
import 'package:get/get.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('Total Items ${c.sum} and ${c.price}\$'),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
