import 'package:dealing_with_getx/view/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pagethree.dart';
class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                onPressed: () {
                  Get.off(const PageTwo()); // Navigate to PageTwo view using GetX routing and remove all previous views from stack
                },
                color: Colors.blue,
                child: const Text('Page Two'),
              ),
            ),
            const SizedBox(height: 10,),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Get.offAll(const PageThree()); // Navigate to PageTwo view using GetX routing and remove all previous views from stack
                },
                color: Colors.blue,
                child: const Text('Page Three'),
              ),
            ),
            const SizedBox(height: 10,),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Get.back(); // Navigate to previous view using GetX routing
                },
                color: Colors.blue,
                child: const Text('Back'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
