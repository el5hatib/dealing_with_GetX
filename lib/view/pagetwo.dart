import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                onPressed: () {
                  Get.offAllNamed('/page-one'); // Navigate to PageOne view using GetX routing and remove all previous views from stack
                },
                color: Colors.blue,
                child: const Text('Page one'),
              ),
            ),
            const SizedBox(height: 10,),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Get.offAllNamed('/page-three'); // Navigate to PageTwo view using GetX routing and remove all previous views from stack
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
