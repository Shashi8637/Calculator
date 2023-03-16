import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {

      Mybutton({Key? key,required this.title,required this.mycolor ,required  this.onPress}) : super(key: key);
      final String title;
      final Color mycolor ;
      final VoidCallback onPress;

      @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: InkWell(
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
               color: mycolor,
              ),
              child: Center(
                child: Text(title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
