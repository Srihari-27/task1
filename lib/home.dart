import 'package:flutter/material.dart';
import 'package:chat_items/ingred.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children:<Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //color: Colors.blueGrey,
                  child:const Text("IF U WANNA KNOW THE SECRET RECIPE OF CHATKHAZANA",
                      style: TextStyle(fontSize: 12,
                                       color: Colors.brown
                                       //fontFamily: 'lemon_milk'
                         ),

                  ),
                ),

              ),
            ),
            GestureDetector(
              onTap :(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Ingred()));
              },
              child:
              Container(
                color: Colors.blue[300],
                child: Text('CLICK HERE'),
              ),

            ),


          ],

        ),
      ),


    );
  }
}
