import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(),);
  }
}
class Home extends StatefulWidget {
   Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}
int itemcount=0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        child: Text(itemcount.toString()),
      ),),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            itemcount--;
            print(itemcount);
            setState(() {

            });
          },
            child: Icon(Icons.remove),),
          SizedBox(width: 8,),
          FloatingActionButton(onPressed: (){
            itemcount++;
            print(itemcount);
            setState(() {

            });
          },
          child: Icon(Icons.add),),
        ],
      ),
    );
  }
}

