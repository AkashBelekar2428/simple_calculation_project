import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Calculation());
}

class Calculation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home:CalculationScreen(),
    );
  }
}

class CalculationScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => CalculationState();
}

class CalculationState extends State<CalculationScreen>{
  var tfFirstController = TextEditingController();
  var tfSecondController = TextEditingController();
   int result = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Calculations"),
     ),
     body: Container(
       color: Colors.blueGrey,
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TextField(
               keyboardType: TextInputType.number,
               controller:tfFirstController,
             ),
             TextField(
               keyboardType: TextInputType.number,
               controller: tfSecondController,
             ),
             Padding(
               padding: const EdgeInsets.all(11.0),
               child: Text("Result: $result",style: TextStyle(fontSize: 20,color: Colors.white),),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   ElevatedButton(onPressed: (){
                     var num1 = int.parse(tfFirstController.text.toString());
                     var num2 = int.parse(tfSecondController.text.toString());
                     result = num1 + num2 ;
                     print('result $result');
                     setState(() {

                     });
                   }, child: Text('Add')),
                   ElevatedButton(onPressed: (){
                     setState(() {
                       var num1 = int.parse(tfFirstController.text.toString());
                       var num2 = int.parse(tfSecondController.text.toString());

                       result = num1 - num2 ;
                       print('result $result');
                     });
                   }, child: Text('Sub')),
                   ElevatedButton(onPressed: (){
                     setState(() {
                       var num1 = int.parse(tfFirstController.text.toString());
                       var num2 = int.parse(tfSecondController.text.toString());

                       result = num1 * num2 ;
                       print('result $result');
                     });

                   }, child: Text('Mul')),
                   ElevatedButton(onPressed: (){
                     setState(() {
                            var num1 =
                                int.parse(tfFirstController.text.toString());
                            var num2 =
                                int.parse(tfSecondController.text.toString());

                            result = num1 % num2;
                            print('result $result');
                          });
                        }, child: Text('Div')),
                 ],
               ),
             )
           ],
         ),
       ),
       
     ),
   );
  }
}