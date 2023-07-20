import 'package:dealing_with_getx/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Home extends StatelessWidget {
   Home({super.key});
final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() =>Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    controller.increment();
                  },
                  icon: const CircleAvatar(child: Icon(Icons.add)),
                ),
                const SizedBox(
                  width: 10,
                ),
                 Center(
                  child: Text(
                     '${controller.counter.value}',
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  icon: const CircleAvatar(child: Icon(Icons.remove)),
                ),
              ],
            ),
    ),
        ],
      ),
    );
  }
}
// Difference between GETX obs , GetBuilder and Obx
/*
*  GetX is a reactive state manager. It is the easiest way to manage your state and inject it into your widgets.
* GetX is a mix between reactive state manager and stateless widgets, with reactive approach.
* GetX is a mix between reactive state manager and stateless widgets, with reactive approach.
* */
/*
* GetBuilder is a mix between reactive state manager and stateful widgets, with reactive approach.
*
 */
/*
* Obx is a mix between reactive state manager and stateless widgets, with reactive approach.
 */