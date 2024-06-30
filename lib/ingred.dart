import 'package:flutter/material.dart';
import 'package:chat_items/recipes.dart';

class Items{
   String? name;
   String? location;
   int? inp;
   Items({this.name,this.location,this.inp});

}

class Ingred extends StatefulWidget {
  @override
  _IngredState createState() => _IngredState();
}
class _IngredState extends State<Ingred> {
  List l1=[];
  List<Items>  things= [
    Items(name:'Chana Masala',location:'chana masala',inp:0),
    Items(name:'Chat Masala',location:'chat masala',inp:1),
    Items(name:'Dahi',location:'dahi',inp:2),
    Items(name:'Mint Chutney',location:'green chutney',inp:3),
    Items(name:'Onion',location:'onion',inp:4),
    Items(name:'Puri',location:'pani puri',inp:5),
    Items(name:'Papdi',location:'papdi',inp:6),
    Items(name:'Potato Stuffing',location:'potato',inp:7),
    Items(name:'Puffed Rice',location:'puffed rice',inp:8),
    Items(name:'Samosa',location:'samosa',inp:9),
    Items(name:'Sev',location:'sev',inp:10),
    Items(name:'Tamarind Chutney',location:'tamarind',inp:11)


  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Ingredients'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(onPressed: () => {
            print(l1),
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Recipes(alpha: l1)))
          }, icon: Icon(Icons.keyboard_double_arrow_right_outlined)),
        ],
      ),
      body: ListView.builder(
          itemCount: things!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {

                    l1.add(things[index].inp);
                  },
                  title: Text(things[index].name!),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${things[index].location}.png'),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
