import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Início'),
                          subtitle: Text('Tela de Início'),
                        )
                      ],
                      ),
      ),
      appBar: AppBar(
        title: Text("Home Page",
                    style: TextStyle(color: Colors.white),
                    ),
        backgroundColor: Color(0xFF105CA8),
        actions: [
          CustomSwitch()
        ], // Botões que ficam na lateral direita
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Contador: $counter'),
              Padding(padding: EdgeInsets.all(10),),
              CustomSwitch(),
              Padding(padding: EdgeInsets.all(10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                ],
              )
            ],
          )
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF105CA8),
        child: Icon(
          Icons.add,
          color: Colors.white,
          ),
        onPressed: (){
          setState(() {
                  counter++;
                });
        },
      ),
    );
  } 

}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDarkTheme, 
                  onChanged: (value) {
                      AppController.instance.changeTheme();
                    },
                  );
  }
}