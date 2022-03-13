import 'package:flutter/material.dart';
import 'package:shoes/home_page.dart';
import 'package:shoes/login_page.dart';


class DaftarPage extends StatelessWidget {
  const DaftarPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Text(
          'Silahkan Login',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Full Name',
              ),
            ),
          ],
        ),
      );
    }

     Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Addres',
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Your Email Address',
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
          ],
        ),
      );
    }

    Widget loginButton() {
      return Container(
        margin: EdgeInsets.only(bottom: 60),
        width: 500,
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 19,
              color: Color(0xffffffff),
            ),
          ),
        ),
      );
    }
    Widget tacButton() {
      return Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 70,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Start fresh ?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Colors.blueGrey,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    color: Colors.blueGrey,
                  ),
                ),
              )
            ],
          ));
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          title(),
          SizedBox(height: 30,),
          usernameInput(),
          emailInput(),
          passwordInput(),
          SizedBox(height: 30,),
          loginButton(),
          SizedBox(height: 20,),
          tacButton(),
        ],
      ),
    );
  }
}