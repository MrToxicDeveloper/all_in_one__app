import 'package:all_in_one_app/sign_in_up/provider/log_provider.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign In",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 350,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 40),
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
                border: Border(
                  top: BorderSide(width: 1, color: Colors.green),
                  left: BorderSide(width: 1, color: Colors.green),
                  right: BorderSide(width: 1, color: Colors.green),
                  bottom: BorderSide(width: 1, color: Colors.green),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, spreadRadius: 2, blurRadius: 8),
                ],
              ),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter Username :-"),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtusername,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Username",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Enter Password :-"),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtpassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            String username = txtusername.text;
                            String password = txtpassword.text;

                            LogProvider shr = LogProvider();
                            Map m1 = await shr.readData();

                            if(username == m1['username'] && password == m1['password']){
                              Navigator.pushReplacementNamed(context, '/');
                            }
                            else{
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Username or Password"),),);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          child: Text("Sign in"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, 'signup');
                          },
                          child: Text(
                            "Didn't have an account? Sign Up",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //     "Didn't have an account? Sign Up",
                  //     style: TextStyle(color: Colors.red),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // TextButton(
            //   onPressed: () {},
            //   child: Text(
            //     "Didn't have an account? Sign Up",
            //     style: TextStyle(color: Colors.red),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
