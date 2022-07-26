import 'package:flutter/material.dart';

Decoration? notifyBodyDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(25),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 4,
      blurRadius: 7,
      offset: const Offset(0, 3), // changes position of shadow
    ),
  ],
);
Decoration? circleShapeDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(
    color: Colors.blue,
    width: 2,
  ),
  shape: BoxShape.circle,
);
