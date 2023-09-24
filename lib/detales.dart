import 'package:allaboutgetx/TheLastPage.dart';
import 'package:allaboutgetx/dataclass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    thedata arrg = Get.arguments;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text(arrg.name!)),
          body: Container(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        TheListOFdata.map((item) => TheRows(item)).toList(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class TheRows extends StatelessWidget {
  thedata arrg;
  TheRows(this.arrg);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(TheLastPage(), arguments: arrg);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 136, 143, 180),
            borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        height: 100,
        width: 100,
        child: Text(
          arrg.name!,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
