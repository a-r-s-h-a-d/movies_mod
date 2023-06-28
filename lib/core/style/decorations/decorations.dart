import 'package:flutter/material.dart';

BoxDecoration backgroundDecoration() => const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF012A52),
          Color(0xFF011836),
        ],
        stops: [0.0, 1.0],
      ),
    );
