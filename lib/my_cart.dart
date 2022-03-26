import 'package:flutter/material.dart';
import 'package:flutter_simple_cart/my_controller.dart';
import 'package:flutter_simple_cart/total_page.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        title: Text('simple cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Apple'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('5\$'),
                  ],
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        onTap: () {
                          c.decrementApple();
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.orange,
                          child: Center(
                            child: Text(
                              '-1',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Obx(
                      () => Text('${c.apple.toString()}'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        onTap: () {
                          c.incrementApple();
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.orange,
                          child: Center(
                            child: Text(
                              '+1',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Banana'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('3\$'),
                  ],
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        onTap: () {
                          c.decrementBanana();
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.orange,
                          child: Center(
                            child: Text(
                              '-1',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Obx(
                      () => Text('${c.banana.toString()}'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        onTap: () {
                          c.incrementBanana();
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.orange,
                          child: Center(
                            child: Text(
                              '+1',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Get.to(() => TotalPage());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                width: 100,
                height: 50,
                child: Center(
                  child: Text(
                    'Total',
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
