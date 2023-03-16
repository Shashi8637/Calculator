import 'package:flutter/material.dart';
import 'package:untitled4/button.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput ='';
  var ansWer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body:SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [
                          Text(userInput,style: TextStyle(
                            fontSize: 30,
                            color: Colors.white
                          ),),
                          Text(ansWer,style: TextStyle(
                            fontSize: 30,
                            color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Mybutton(title: 'AC' ,onPress: (){
                              userInput ='';
                               ansWer = '';
                               setState(() {

                               });
                            },mycolor: Colors.orange,),
                            Mybutton(title: '+/-',onPress: (){
                              userInput +='+/-';
                              setState(() {

                              });
                            },mycolor: Colors.orange,),
                            Mybutton(title: '%',onPress: (){
                              userInput +='%';
                              setState(() {

                              });
                            },mycolor: Colors.orange,),
                            Mybutton(title: '/',onPress: (){
                              userInput +='/';
                              setState(() {

                              });
                            },mycolor: Colors.orange,),
                          ],
                        ),
                        Row(
                          children: [
                            Mybutton(title: '7' ,onPress: (){
                              userInput +='7';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: '8',onPress: (){
                              userInput +='8';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: '9',onPress: (){
                              userInput +='9';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: 'x',onPress: (){
                              userInput +='x';
                              setState(() {

                              });
                            },mycolor: Colors.orange,),
                          ],
                        ),
                        Row(
                          children: [
                            Mybutton(title: '4' ,onPress: (){
                              userInput +='4';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: '5',onPress: (){
                              userInput +='5';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: '6',onPress: (){
                              userInput +='6';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: '-',onPress: (){
                              userInput +='-';
                              setState(() {

                              });
                            },mycolor: Colors.orange,),
                          ],
                        ),
                        Row(
                          children: [
                            Mybutton(title: '1' ,onPress: (){
                              userInput +='1';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: '2',onPress: (){
                              userInput +='2';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: '3',onPress: (){
                              userInput +='3';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: '+',onPress: (){
                              userInput +='+';
                              setState(() {

                              });
                            },mycolor: Colors.orange,),
                          ],
                        ),
                        Row(
                          children: [
                            Mybutton(title: '0' ,onPress: (){
                              userInput +='0';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: '.',onPress: (){
                              userInput +='.';
                              setState(() {

                              });
                            },mycolor: Colors.grey,),
                            Mybutton(title: 'DEL',onPress: (){
                            userInput = userInput.substring(0,userInput.length-1);
                                  setState(() {

                                  });

                            },mycolor: Colors.grey,),
                            Mybutton(title: '=',onPress: (){
                             equalpress();
                             setState(() {

                             });
                            },mycolor: Colors.orange,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
        )
    );
  }

  void equalpress(){
    String finaluserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL,contextModel );
    ansWer = eval.toString();

  }
}
