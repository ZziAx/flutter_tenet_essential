import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class _ShadowBoxStore {
  static BoxShadow get boxShadowV1 => BoxShadow(
    color: Color(0x40000000), // rgba(0, 0, 0, 0.25)
    offset: Offset(0, 20),
    blurRadius: 25,
    spreadRadius: -5,
  );

  static BoxShadow get boxShadowV2 => BoxShadow(
    color: Color(0x19000000), // rgba(0, 0, 0, 0.1)
    offset: Offset(0, 8),
    blurRadius: 10,
    spreadRadius: -6,
  );

  static BoxShadow get boxShadowV3 => BoxShadow(
    color: Color(0x0A398DFA),
    offset: Offset(0, 0),
    blurRadius: 0,
    spreadRadius: 1,
  );

  static BoxShadow get boxShadowV4 => BoxShadow(
    color: Color(0x0A2A3345),
    offset: Offset(0, 1),
    blurRadius: 1,
    spreadRadius: -0.5,
  );
  static BoxShadow get boxShadowV5 => BoxShadow(
    color: Color(0x0A2A3346),
    offset: Offset(0, 3),
    blurRadius: 3,
    spreadRadius: -1.5,
  );

  static BoxShadow get boxShadowV6 => BoxShadow(
    color: Color(0x0A2A3346),
    offset: Offset(0, 6),
    blurRadius: 6,
    spreadRadius: -3,
  );
  static BoxShadow get boxShadowV7 => BoxShadow(
    color: Color(0x0A0E3F7E),
    offset: Offset(0, 12),
    blurRadius: 12,
    spreadRadius: -6,
  );
  static BoxShadow get boxShadowV8 => BoxShadow(
    color: Color(0x0A0E3F7E),
    offset: Offset(0, 24),
    blurRadius: 24,
    spreadRadius: -12,
  );
}

class ShadowStore {
  static List<BoxShadow> get shadowV1 => [
    _ShadowBoxStore.boxShadowV1,
    _ShadowBoxStore.boxShadowV2,
  ];

  static List<BoxShadow> get shadowV2 => [
    _ShadowBoxStore.boxShadowV2,
    _ShadowBoxStore.boxShadowV3,
    _ShadowBoxStore.boxShadowV4,
    _ShadowBoxStore.boxShadowV5,
    _ShadowBoxStore.boxShadowV6,
    _ShadowBoxStore.boxShadowV7,
    _ShadowBoxStore.boxShadowV8,
  ];


  static List<BoxShadow> shadowV3(Color color) => [
    BoxShadow(
      color: color.withOpacity(0.25),
      blurRadius: 30,
      spreadRadius: 4,
      offset: const Offset(0, 10),
    ),
    BoxShadow(
      color: color.withOpacity(0.08),
      blurRadius: 60,
      offset: const Offset(0, 20),
    ),
    // _ShadowBoxStore.boxShadowV2,
    // _ShadowBoxStore.boxShadowV3,
    // _ShadowBoxStore.boxShadowV4,
    // _ShadowBoxStore.boxShadowV5,
    // _ShadowBoxStore.boxShadowV6,
    // _ShadowBoxStore.boxShadowV7,
    // _ShadowBoxStore.boxShadowV8,
  ];
}
