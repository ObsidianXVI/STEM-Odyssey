library stem_odyssey;

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutter/material.dart';

part './stem_odyssey_game.dart';
void main() {
  runApp(const STEMOdysseyApp());
}

class STEMOdysseyApp extends StatelessWidget {
  const STEMOdysseyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STEM Odyssey',
      initialRoute: '/game',
      routes: {
        '/game': (_) => STEMOdysseyGame(),
      },
    );
  }
}
