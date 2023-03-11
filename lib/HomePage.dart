import 'package:flutter/material.dart';
import 'package:untitled4/button.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userinput ='';
  var answer = '';
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
                          Text(userinput,style: TextStyle(
                            fontSize: 30,
                            color: Colors.white10
                          ),),
                          Text(userinput,style: TextStyle(
                            fontSize: 30,
                            color: Colors.white10
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

                            },),
                            Mybutton(title: '+/-',onPress: (){}),
                            Mybutton(title: '%',onPress: (){}),
                            Mybutton(title: '/',onPress: (){}),
                          ],
                        ),
                        Row(
                          children: [
                            Mybutton(title: '7' ,onPress: (){},),
                            Mybutton(title: '8',onPress: (){}),
                            Mybutton(title: '0',onPress: (){}),
                            Mybutton(title: 'x',onPress: (){}),
                          ],
                        ),
                        Row(
                          children: [
                            Mybutton(title: '4' ,onPress: (){},),
                            Mybutton(title: '5',onPress: (){}),
                            Mybutton(title: '6',onPress: (){}),
                            Mybutton(title: '-',onPress: (){}),
                          ],
                        ),
                        Row(
                          children: [
                            Mybutton(title: '1' ,onPress: (){},),
                            Mybutton(title: '2',onPress: (){}),
                            Mybutton(title: '3',onPress: (){}),
                            Mybutton(title: '+',onPress: (){}),
                          ],
                        ),
                        Row(
                          children: [
                            Mybutton(title: '0' ,onPress: (){},),
                            Mybutton(title: '.',onPress: (){}),
                            Mybutton(title: 'DEL',onPress: (){}),
                            Mybutton(title: '=',onPress: (){}),
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
}
