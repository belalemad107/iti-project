import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  var x = true;
  var icon;
  var iconF = Icons.check_box;
  var iconS = Icons.check_box_outline_blank;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.red[800],
                        )),
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: Colors.red[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Text('Welcome back',
                    style: TextStyle(
                        color: Colors.red[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 24)),
                SizedBox(height: 5),
                Text('Continue to sign up!',
                    style: TextStyle(color: Colors.red[800], fontSize: 24)),
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 10),
                  child: Text(
                    'NAME',
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ),
                Container(
                  height: 40,
                  child: TextFormField(
                    cursorColor: Colors.red[800],
                    cursorHeight: 20,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Name required';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'Your Name',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      contentPadding: EdgeInsets.only(top: 20, left: 20),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 10),
                  child: Text(
                    'EMAIL',
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ),
                Container(
                  height: 40,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email required';
                      } else {
                        return null;
                      }
                    },
                    cursorColor: Colors.red[800],
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      hintText: 'Your Email',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      contentPadding: EdgeInsets.only(top: 20, left: 20),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 10),
                  child: Text(
                    'PASSWORD',
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ),
                Container(
                  height: 40,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password required';
                      } else {
                        return null;
                      }
                    },
                    obscureText: true,
                    cursorColor: Colors.red[800],
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      hintText: 'Your Password',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      contentPadding: EdgeInsets.only(top: 20, left: 20),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 10),
                  child: Text(
                    'RE password',
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ),
                Container(
                  height: 40,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password required';
                      } else {
                        return null;
                      }
                    },
                    obscureText: true,
                    cursorColor: Colors.red[800],
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      hintText: 'Your Password Again',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      contentPadding: EdgeInsets.only(top: 20, left: 20),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            x = !x;
                            if (x == false) {
                              icon = iconS;
                            } else {
                              icon = iconF;
                            }
                          });
                        },
                        child: Icon(
                          icon,
                          color: Colors.red[800],
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'By signing up you agree to our terms &',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'conditions & privacy policy',
                          style: TextStyle(color: Colors.red[800]),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      print('true');
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red[800]),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account?',
                      style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          'Sign in',
                          style:
                              TextStyle(color: Colors.red[800], fontSize: 16),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
