import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  // Esse cara é o listener, e quando houver alguma modificaçào, o AppControler vai notificar e ele vai rebuildar
    return AnimatedBuilder(
                            animation: AppController.instance,
                            builder: (context, child) {
                              return MaterialApp(
                                                  theme: ThemeData(
                                                    primarySwatch: Colors.red,
                                                    brightness: 
                                                      AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light
                                                      
                                                  ),
                                                  // home: LoginPage(),
                                                  initialRoute: '/',
                                                  routes: {
                                                    '/': (context) => LoginPage(),
                                                    '/home': (context) => HomePage(),
                                                  },
                                                );
                            }
    );
  }
}