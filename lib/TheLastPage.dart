import 'package:allaboutgetx/dataclass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TheLastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    thedata thedataobj = Get.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(thedataobj.name!)),
      body: Container(),
    );
  }
}
