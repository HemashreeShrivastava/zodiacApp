import 'package:flutter/material.dart';
import 'package:zodiac/pages/choose_zodiac.dart';
import 'package:zodiac/pages/home.dart';
import 'package:zodiac/pages/loading.dart';

void main() =>
    runApp(
        MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => Loading(),
            '/home': (context) => Home(),
            '/chooseZodiac': (context) => ChooseZodiac(),
          },
        )
    );

