import 'package:loginpage_123/cards_design.dart';
import 'package:loginpage_123/method.dart';
import 'package:flutter/material.dart';
import 'background-image.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final  TextEditingController _password = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;



    //LOGIN SCREEN UI....
    return Stack(
      children:[
      BackgroundImage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: isLoading
            ? Center(
          child: Container(
            height: size.height / 20,
            width: size.height / 20,
            child: CircularProgressIndicator(),
          ),
        )

            : SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 5,
              ),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   width: size.width / 0.5,
              //   child: IconButton(
              //       icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
              // ),
              SizedBox(
                height: size.height / 20,
              ),

              Container(

                width: size.width / 1.1,

              ),
              SizedBox(
                height: size.height / 3,
              ),
              Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(
                    size, "Email",
                    Icons.email, _email,

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Container(

                  child: field(
                      size, "Password",
                      Icons.lock, _password,
                  ),
                ),
              ),
              // validator: (val) => val.length < 6 ? 'Password too short.' : null,
              // onSaved: (val) => _password = val,
              // obscureText: true,

              SizedBox(
                height: size.height / 10,
              ),
              customButton(size),
              SizedBox(
                height: size.height / 50,
              ),
            ],
          ),
        ),
      ),
    ],
    );

  }

  //THIS FOR WHEN WE FILLED THE DETAILS IN LOGIN(EMAIL,PASSWORD) AFTER WHAT TYPE OF ACTION WE WANT...
  Widget customButton(Size size) {
    return GestureDetector(
      onTap: () {
        if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
          setState(() {
            isLoading = true;
          });
          logIn(_email.text, _password.text).then((user) {
            print(user);

            if (user != null) {
              print("Login Sucessfull");
              setState(() {
                isLoading = false;
              });


              print("------------");
              print(_email.text.toString().split('@'));

              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MakeDashboardItems(std_id: _email.text.toString().split('@')[0],)));
            } else {
              print("Login Failed");
              setState(() {
                isLoading = false;
              });
            }
          });
        } else {
          print("Please fill form correctly");
        }
      },

      //UI FOR LOGIN BUTTON
      child: Container(
          height: size.height / 14,
          width: size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),
          alignment: Alignment.center,
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

  //THIS IS FIELD UI IN WHICH INPUT EMAIL AND PASSWORD
  Widget field(
      Size size, String hintText, IconData icon, TextEditingController cont) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.1,
      child: TextField(
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

// class MakeDashboardItems extends StatefulWidget {
//   final String text;
//   MakeDashboardItems({Key key, @required this.text}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
//
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => MakeDashboardItems(text: 'Hello',),
// )),