import 'package:flutter/material.dart';

class AppController extends ChangeNotifier{
    // Como queremos criar apenas uma instância para a HomePage e para o AppWidget, entào vamos usar um design pattern chamado singleton
    static AppController instance = AppController();


    bool isDarkTheme = false;
    changeTheme(){
      isDarkTheme = !isDarkTheme;
      notifyListeners(); // Notifica quem estiver escutando
    }
}