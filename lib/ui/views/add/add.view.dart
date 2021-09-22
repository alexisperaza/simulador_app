import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:simulador_app/core/modelos/modelosimulacion.dart';
import 'package:simulador_app/ui/shared/background.dart';
import 'package:simulador_app/ui/views/add/widgets/add_widgets.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {

  late Simulacion simulacion;


  @override
  Widget build(BuildContext context) {

    bool isFirst = true;
    Size size = MediaQuery.of(context).size;
    return Background(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget> [
            SizedBox(height: size.height * 0.02,),

            AppBarAdd(),


            SizedBox(height: size.height * 0.02,),


            Image.asset('assets/images/image22.png',width: size.width*0.70,),

            SizedBox(height: size.height * 0.04,),

            Container(
              width: size.width * 0.85,
              padding: EdgeInsets.symmetric(horizontal: 15,),

              child: Text(
                'COMPLETÁ LOS DATOS:',
                textScaleFactor : MediaQuery.of(context).textScaleFactor,
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white), ),

            ),

            SizedBox(height: size.height * 0.03,),
            FormAdd(),



          ],
        )


    );
  }
}

