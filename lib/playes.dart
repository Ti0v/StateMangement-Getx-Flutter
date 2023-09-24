import 'package:allaboutgetx/detales.dart';
import 'package:allaboutgetx/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dataclass.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controoller = Get.put(thedata);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          children:
              TheListOFdata.map((item) => TheMainCountainer(item)).toList(),
        ),
      ),
    );
  }
}

class TheMainCountainer extends StatelessWidget {
  thedata TheObjectData;
  TheMainCountainer(this.TheObjectData);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: const EdgeInsets.all(4),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color.fromARGB(255, 154, 151, 151),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Image.network(
              TheObjectData.imaage!,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                color: Color.fromARGB(255, 0, 1, 3),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 220, bottom: 30),
                      child: TheText("About:", 40),
                    ),
                    TheText(TheObjectData.name!, 30),
                    TheText(TheObjectData.desc!, 30),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: ElevatedButton(
                        onPressed: (() =>
                            Get.to(DetalesPage(), arguments: TheObjectData)),
                        child: TheText("Go To He Detales", 20),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

Text TheText(String text, double size) {
  return Text(
    text,
    style: TextStyle(color: Colors.white, fontSize: size),
  );
}

// Column TheCoo(
//     BuildContext context, String n, int age, String dec, String image) {
//   return Column(
//     children: [
//       Expanded(
//         child: Image.network(
//           'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt336ff13626ee4c18/60da6df822d24e38a386578b/cbde984bc5bd9aa9f9430f413d4bbd4974aae4a8.jpg?auto=webp&format=pjpg&width=3840&quality=60',
//           fit: BoxFit.fill,
//         ),
//       ),
//       Expanded(
//           child: Container(
//         padding: EdgeInsets.all(1),
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         color: Color.fromARGB(255, 8, 28, 43),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             TheText("This is Mohamed Noor", Colors.white, 30),
//           ],
//         ),
//       )),
//     ],
//   );
// }

// Text TheText(String s, Color c, double fontsize) {
//   return Text(
//     s,
//     style: TextStyle(color: c, fontSize: fontsize),
//   );
// }
/// width: MediaQuery.of(context).size.width,
            //  height  : MediaQuery.of(context).size.height,


// ListView(
//           scrollDirection: Axis.vertical,
//           children: TheListOFdata.map((item) => Container(
//                 padding: EdgeInsets.all(10),
//                 margin: EdgeInsets.all(10),
//                 alignment: Alignment.center,
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 color: Color.fromARGB(255, 195, 153, 153),
//                 child: Text('${item.name}'),
//               )).toList(),
//         ),
            