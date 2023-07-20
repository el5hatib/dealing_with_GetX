import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed('/page-one'); // Navigate to PageOne view using GetX routing
                },
                color: Colors.blue,
                child: const Text('Page one'),
              ),
            ),
            const SizedBox(height: 10,),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed('/page-two'); // Navigate to PageTwo view using GetX routing
                },
                color: Colors.blue,
                child: const Text('Page Two'),
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
