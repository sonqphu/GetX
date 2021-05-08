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
                      'clicks: ${controller.countIncre}',
                    )),
            GetBuilder<CounterController>(
                builder: (_) => Text(
                      'clicks: ${controller.countDecre}',
                    )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('Decre number'),
              onPressed: () async {
                controller.decrement();
              },
            ),
            SizedBox(
              height: 40,
            ),
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
        onPressed: () async {
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
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: const EdgeInsets.only(top: 180.0),
      child: Column(
        children: [
          Text("${ctrl.countIncre}"),
          Text("${ctrl.getStorageValue}"),
        ],
      ),
    )));
  }
}

class TeststateFull extends StatefulWidget {
  @override
  _aaaState createState() => _aaaState();
}

// ignore: camel_case_types
class _aaaState extends State<TeststateFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: const EdgeInsets.only(top: 180.0),
      child: Column(
        children: [
          Text("123"),
          Text("456"),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: Text('Decre number'),
            onPressed: () {
              setState(() {
                var a = 0;
              });
            },
          ),
        ],
      ),
    )));
  }
}

// ignore: must_be_immutable
class CountInWidget extends StatelessWidget {
  var count = 0.obs;
  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Obx(() => Text("$count")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => count ++,
      ));
}
