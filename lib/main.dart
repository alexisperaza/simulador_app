import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simulador_app/ui/views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/Splash',
      getPages: [
        GetPage(name:'/Splash', page: ()=> Splash()),
        GetPage(name:'/Name', page: ()=> Name()),
        GetPage(name:'/Add', page: ()=> Add()),
        GetPage(name:'/Details', page: ()=> Details()),

      ],
    );
  }
}

