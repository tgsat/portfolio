import 'package:flutter/material.dart';

class GeneralCard {
  static BoxDecoration shadow() => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 8,
            spreadRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      );
  static BoxDecoration shadowPrimary() => BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFC4ACA1),
            blurRadius: 6,
            spreadRadius: 4,
          )
        ],
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      );
}
