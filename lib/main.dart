import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: first(),));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  ValueNotifier sum=ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Column(
        children: [

          TextField(
            controller: t1,

            decoration: InputDecoration(
              label: Text("Enter Value")
            ),
          ),

          TextField(
            controller: t2,

            decoration: InputDecoration(
                label: Text("Enter Value")
            ),
          ),

          ElevatedButton(onPressed: () {

            sum.value=int.parse(t1.text)+int.parse(t2.text);

          }, child: Text("Submit")),

          ValueListenableBuilder(valueListenable: sum, builder: (context, value, child) {
            return Text("SUM :- ${sum.value}");
          },)
        ],
      ),
    );
  }
}
