import 'package:chat_items/final.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final Map<String, List> chat={
  'SAMOSA' :[9],
  "PANI PURI" :[3,4,5,7,11],
  "BHEL PURI" :[3,4,5,7,8,10,11],
  "SEV PURI" :[1,3,4,5,10,11],
  "DAHI PURI" :[1,2,3,5,7,11],
  "DAHI PAPDI" :[1,2,3,6,7,11],
  "CHANA SAMOSA" :[0,3,4,9,10,11],
  "MASALA POORI" :[0,3,4,5,10,11]
};
List? funpanrom() {
 // Recipes recipes = Recipes();
  List<String> lo = [];
  for (var key in chat.keys) {
    bool allInAlpha = true;

    for (int num in chat[key]!) {
      if (Recipes.alpha!.contains(num)) {
        allInAlpha = false;
        break;
      }
    }

    if (allInAlpha) {
      lo.add(key);
    }
  }
  for (int i = 0; i < lo.length; i++) {
    print('1');
    print(lo);
  }
}


class Recipes extends StatelessWidget {
  List? alpha;
  Recipes({required this.alpha});
  List? lo=funpanrom();



  @override
  Widget build(BuildContext context)  {
    return Scaffold(
       backgroundColor: Colors.greenAccent,
       body: ListView.builder(
                       itemCount: lo!.length,
                       itemBuilder: (context, index) {
                                      return Padding(
                                           padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                                           child: Card(
                                                child: ListTile(
                                                       onTap: () {
                                                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Finale(a: lo![index])));
                                                       },
                                                       title: Text(lo![index]),

  ),
  ),
  );
  }
  ),

    );
  }
}
