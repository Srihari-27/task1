import 'package:chat_items/final.dart';
import 'package:flutter/material.dart';

import 'package:chat_items/home.dart';
import 'package:chat_items/recipes.dart';



void main() => runApp(MaterialApp(
    initialRoute:'/recipes',
    routes:{
      '/final':(context) => Finale(a:'SAMOSA'),
      '/home': (context)  => Home(),
      '/recipes': (context) =>Recipes(alpha:[1,2,3,4,5,6,7,8,9,11,10]),

    }
));