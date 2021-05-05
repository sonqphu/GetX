import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends StatelessWidget {
  final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
                builder: (_) => Text(
                      'clicks: ${controller.count}',
                    )),
            ElevatedButton(
              child: Text('Next Route'),
              onPressed: () {
                Get.to(Second());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed:()
          async { 
            controller.increment();
            controller.getShareValue();
          },  
          ),
    );
  }
}
class Second extends StatelessWidget {
  final CounterController ctrl = Get.find();
  @override
  Widget build(context){
     return Scaffold(body: Center(child: Padding(
       padding: const EdgeInsets.only(top:180.0),
       child: Column(
         children: [
           Text("${ctrl.count}"),
           Text("${ctrl.getStorageValue}"),
         ],
       ),
     )));
  }
}