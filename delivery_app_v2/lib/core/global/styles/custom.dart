import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Custom {
  TextStyle customTitle() {
    return const TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle customSubTitle() {
    return const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
    );
  }

  String convertFormatedPrice(int value) {
    double vr = value / 100;
    MoneyMaskedTextController res = MoneyMaskedTextController(
      decimalSeparator: ',',
      thousandSeparator: '.',
      initialValue: vr,
    );
    return res.value.text;
  }
}
