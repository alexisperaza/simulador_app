import 'package:flutter/material.dart';
import 'dart:async';
import 'package:simulador_app/ui/shared/background.dart';
import 'package:simulador_app/ui/views/name/widgets/name_widgets.dart';
import 'package:simulador_app/ui/views/add/add.view.dart';


class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {

  void dispose(){
    _user.close();
    super.dispose();
  }

  String ? ValidatorMessage;
  bool validate = false;
  final _user = StreamController<String>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: StreamBuilder<String>(
        initialData:  '',
        stream: _user.stream,
        builder: (context, userSnapshot){
          return  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              SizedBox(height: size.height * 0.1),

              Image.asset('assets/images/grupo2.png', width: size.width*0.3,),

              SizedBox(height: size.height * 0.05),

              Image.asset('assets/images/2723.png', width: size.width*0.75,),

              SizedBox(height: size.height * 0.08),

              TextFieldName(icon: Icons.account_circle_outlined, onChanged: _user.add),

              SizedBox(height: size.height * 0.08),

              RoundedButton(text: 'ENTRAR', press: () async {
                if( userSnapshot.data!.isNotEmpty ) {

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Add()));

                  setState(() {
                    validate = true;
                  });
                }else{
                  setState(() {
                    validate = true;
                  });

                }

              }),

              if(userSnapshot.data!.isEmpty && validate ==true)
                Container(
                  alignment: Alignment.center,
                  child: const Text( 'Introduce un nombre', style: TextStyle( color:Colors.red)
                  ),

                )
              else
                Container()

              ,SizedBox(height: size.height * 0.08),









            ],
          );

        },

      ),
    );
  }
}


