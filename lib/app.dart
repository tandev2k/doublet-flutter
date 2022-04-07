import 'package:flutter/material.dart';
import 'package:sp_shop_app/constants/constants.dart';
import 'package:sp_shop_app/screens/Profile/profile_screen.dart';
import 'package:sp_shop_app/screens/Welcome/welcome_screen.dart';
import 'package:sp_shop_app/screens/Home/home_screen.dart';
import 'package:sp_shop_app/screens/Collection/collection_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.white
        
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home:  HomeScreen(),
      home: HomeScreen(),
      routes: <String, WidgetBuilder> {
        Constants.COLLECTION_SCREEN: (BuildContext context) => CollectionScreen(),
        Constants.PROFILE_SCREEN: (BuildContext context) => ProfileScreen(),
        Constants.HOME_SCREEN: (BuildContext context) => HomeScreen(),
      },
    );
  }
}