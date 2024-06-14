import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: Image.asset('assets/images/logoFlutterProject.png'),
                          width: 100,
                          height: 100,
                          ),
                Container(height: 50,),        
                Card(
                  color: Color(0xffFEF7FF),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 20, bottom: 12),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true, // Serve para não aparecer a senha quando tá digitando
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 15,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFEBEDFC),
                            ),
                          onPressed: () {
                            if (email == 'jordanyluiz@gmail.com' && password == "Jordy123456"){
                              Navigator.of(context).pushReplacementNamed('/home');
                            }else{
                              print('errado');
                            }
                          }, 
                          child: Container(
                                            width: double.infinity, 
                                            child: Text(
                                                        'Entrar', 
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xFF1F64FF)),
                                                        )
                                          )
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 350,
                width: MediaQuery.of(context).size.width ,
                child: Image.asset(
                        'assets/images/waveBackground.png',
                        fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          // Container(
          //   color: Color(0xFFEAEDFF).withOpacity(1), 
          // ),
          _body(),
        ],
      ),
    );
  }
}