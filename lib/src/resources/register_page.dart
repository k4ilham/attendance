import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Image.asset('retouching.png',height: 50,width: 50,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 8),
                child: Text("Welcome Aboard !",
                style: TextStyle(fontSize: 22, color: Colors.black45),),
              ),
              Text(
                "Signup with Attentdance App simple steps",
              style: TextStyle(fontSize: 16,color: Colors.black26),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: TextField(
                  style: TextStyle(fontSize: 18,color: Colors.black26),
                  decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: Container(
                      child: Icon(Icons.person),width: 50,
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                        BorderSide(color: Colors.black26,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18,color: Colors.black26),
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  prefixIcon: Container(
                    child: Icon(Icons.phone),width: 50,
                  ),
                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.black26,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: TextField(
                  style: TextStyle(fontSize: 18,color: Colors.black26),
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Container(
                      child: Icon(Icons.email),width: 50,
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black26,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18,color: Colors.black26),
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Container(
                    child: Icon(Icons.vpn_key),width: 50,
                  ),
                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.black26,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                ),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 18,color: Colors.black26),
                  decoration: InputDecoration(
                    labelText: "Confim Password",
                    prefixIcon: Container(
                      child: Icon(Icons.verified_user),width: 50,
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black26,width: 1,),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: (){},
                    child: Text("Signup",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(6))
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0,30),
                child: RichText(
                  text: TextSpan(
                    text: "Already a User?",
                    style: TextStyle(fontSize: 16,color: Colors.black26),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Login now",
                        style: TextStyle(color: Colors.blue,fontSize: 16),
                        recognizer: TapGestureRecognizer()
                          ..onTap = (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                      )
                    ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
