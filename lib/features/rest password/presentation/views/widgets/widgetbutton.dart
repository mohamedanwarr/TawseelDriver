import 'package:flutter/material.dart';

import 'firstbottomsheet.dart';

class Button extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: (const Size(380, 48)),
          primary: const Color(0xFFFF6600),
        ),
        onPressed: () {

          showModalBottomSheet(
              backgroundColor: const Color(0xFFF3F5F7),
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              context: context,
              builder: (ctx) => bottomsheetcontainer(height: height));
        },
        child: Text(
          "ارسال",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ));
  }
}
