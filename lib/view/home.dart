import 'package:dealing_with_getx/view/pagethree.dart';
import 'package:dealing_with_getx/view/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pageone.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                onPressed: () {
                //  Get.to(() => const PageOne()); // Navigate to PageOne view using GetX routing
                  Get.to(const PageOne());  // Navigate to PageOne view using GetX routing and remove all previous views from stack
                },
                color: Colors.blue,
                child: const Text('Page One'),
              ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(const PageTwo()); // Navigate to PageTwo view using GetX routing
                  },
                  color: Colors.blue,
                  child: const Text('Page Two'),
                ),
              ),
            const SizedBox(height: 10,),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Get.to(const PageThree()); // Navigate to PageThree view using GetX routing
                },
                color: Colors.blue,
                child: const Text('Page Three'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
