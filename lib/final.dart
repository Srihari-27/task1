import 'package:flutter/material.dart';

class Pic{
  int? num;
  List<String>? lp;
  String? name;


  Pic({required this.num,required this.name, required this.lp});
}


class Finale extends StatefulWidget {
  //const Final({super.key});
  String? a;
  Finale({required this.a});

  @override
  State<Finale> createState() => _FinaleState();
}

class _FinaleState extends State<Finale> {
  List<Pic> noname=[
    Pic(num:1,name:'SAMOSA',lp:['Prepare the dough for outer layer',
                  'add boiled potatoes nd onions and stir to get the stuffing',
                   'Roll the dough and close it with stuffing into a triangular shape',
                  'Fry them in pan and serve hot with chutneys']),
    Pic(num:2,name:'PANI PURI',lp:['Boil the potatoes and cut onions into fine pieces',
                  'mix chat masala with the potatoes',
                  'take a puri and stuff the potatoes',
                  'add the sweet and tangy chutney',
                  'serve it with mint paani instantly']),
    Pic(num:3,name:'BHEL PURI',lp:['Take the potato stuffing and add crushed puris into it',
                   'add puffed rice and roasted peanuts along with sweet and spicy chutney',
                   'add onions and veggies of your choice ',
                   'finally add chaat masala for taste and serve']),
    Pic(num:4,name:'SEV PURI',lp:['Take a puri and add potato stuffing',
                  'On that add 2types of chutney(sweet and tangy) and chat masala',
                  'Add lots of sev on top and serve it']),
    Pic(num:5,name:'DAHI PURI',lp:['To a new puri ,add potato stuffing '
                  'add sweet and tangy chutnies ',
                  'add freshly made dahi and mix it well on top of that',
                  'Finally add sev and pinch of chaat masala for taste']),
    Pic(num:6,name:'DAHI PAPDI',lp:['Take a fresh papdi and crush it into pieces',''
                   'add potato stuffing and 2 chutnies to it',
                   'on it add freshly made dahi with salt',
                   'serve it with sev and chaat seasonings as seasoning']),
    Pic(num:7,name:'CHANA SAMOSA',lp:['Take a samosa and break it into pieces',
                  'add channa masala on  top of it',
                  'add sev and onions for seasoning and serve it hot']),
    Pic(num:8,name:'MASALA POORI',lp:['Take few puris and break them into pieces',
                  'add channa masala on top of it',
                  'add sweet and tangy chutnies',
                  'Mix them well and garnish it with onions'])
  ];

  int p=0;
  var len;

  void funct(){
    for( var i=0 ; i<8; i++){
      if(noname[i].name==widget.a){
        p=i;
      }
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('The ${noname[p!].name} Recipe '),
        centerTitle: true,
        elevation: 0,
      ),
        body: ListView.builder(
             itemCount: noname[p!].lp!.length,
             itemBuilder: (context, index) {
               return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                    child: Card(
                            child: ListTile(
                               title: Text('step ${index+1} : ${noname[p!]!.lp![index]}'),

  ),
  ),
  );
  }
  ),
    );
  }
}
