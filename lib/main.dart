import 'package:flutter/material.dart';

import 'package:food_app/pages/HomePage.dart';
import 'package:food_app/pages/SignInPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      home: HomePage(),
    ));