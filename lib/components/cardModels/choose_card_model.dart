import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardModel {
  String getCardNumber(String bankname) {
    if (bankname == 'Ecobank') {
      return '0114';
    } else if (bankname == 'GT Bank') {
      return '0238';
    } else {
      return null;
    }
  }

  String getCardExpiry(String bankname) {
    if (bankname == 'Ecobank') {
      return '11/22';
    } else if (bankname == 'GT Bank') {
      return '7/20';
    } else {
      return null;
    }
  }

  Color getColor(String bankname) {
    if (bankname == 'Ecobank') {
      return Color(0xff0751cb);
    } else if (bankname == 'GT Bank') {
      return Color(0xffD74809);
    } else {
      return null;
    }
  }
}
