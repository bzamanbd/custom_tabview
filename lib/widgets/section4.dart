import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Section4 extends StatefulWidget {
  const Section4({Key? key}) : super(key: key);

  @override
  State<Section4> createState() => _Section4State();
}

class _Section4State extends State<Section4>
    with SingleTickerProviderStateMixin {
  ///it is important to extend it "SingleTickerProviderStateMixin"  //
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: Get.size.width,
            height: Get.size.width / 2,
            child: TabBarView(controller: tabController, children: const [
              Text('data'),
              Text('data'),
            ])),
        SizedBox(
          width: Get.size.width,
          height: Get.size.width * 0.06,
          child: TabBar(controller: tabController, tabs: const [
            Tab(
                child: Text(
              'Book review',
              style: TextStyle(color: Colors.black),
            )),
            Tab(child: Text('Author review'))
          ]),
        ),
      ],
    );
  }
}
