// ignore_for_file: file_names

import 'package:delivery_app_v2/core/others/color.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  final String price;
  const Price({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 130,
      height: 50,
      child: Row(
        children: [
          Container(
              decoration: const BoxDecoration(
                color: MyColors.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(0),
                ),
              ),
              width: 100,
              height: 40,
              child: Stack(
                children: [
                  const Positioned(
                      top: 4,
                      left: 12,
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(
                          'R\$',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        price,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
