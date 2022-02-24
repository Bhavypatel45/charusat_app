//import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpage_123/palatte.dart';
import 'password.dart';
import 'background-image.dart';
import 'package:loginpage_123/info.dart';
import 'package:loginpage_123/cards_design.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
             child: ListView(
            children: [
              Container(
                  height: 320,
                child: Center(
                ),
               ),
              SizedBox(
                height: 150,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextInput(
                        icon: Icons.mail,
                        hint: 'Email',
                        inputAction: TextInputAction.done,
                        inputType: TextInputType.emailAddress,
                      ),
                     PasswordInput(
                        icon: Icons.lock,
                        hint: 'Password',
                        inputAction: TextInputAction.done,
                      ),
                      Text(
                        'Login Now',
                        style: kBodyText,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) => const MakeDashboardItems(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 14.0),
                                child: Text(
                                  'Login',
                                  style: kBodyText,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
             ],
             ),
           ),
        ),
      ],
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction,
    required this.inputType,
  }) : super(key: key);
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: 'Email',
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.email,
                color: Colors.white,
                size: 30,
              ),
            ),
            hintStyle: kBodyText,
          ),
          style: kBodyText,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}





