import 'package:flutter/material.dart';

class AppBarAdd extends StatelessWidget {
  const AppBarAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height/2*0.1,

        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: size.width*0.07,),
                  child:GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.keyboard_arrow_left, size:  size.height/2*0.11,color: Colors.white,),
                  ),),
              ),

              Expanded(
                  flex:3,
                  child:Container(
                    alignment: Alignment.center,
                    child: RichText(
                        textScaleFactor : MediaQuery.of(context).textScaleFactor,
                        text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'SIMULA TU ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.white)
                              ),
                              TextSpan(
                                  text: 'INVERSIÓN',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Color(0xff2ee872))
                              ),

                            ]
                        )
                    ),
                  )
              ),


              Expanded(flex:1,child: Container())


            ]
        )
    );

  }
}
