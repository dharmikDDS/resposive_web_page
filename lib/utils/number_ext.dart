import 'package:flutter/material.dart';

extension PaddingExtension on int {
  Widget get horizontalSpace => SizedBox(width: toDouble());

  Widget get verticleSpace => SizedBox(height: toDouble());
}
