import 'package:flutter/material.dart';
//import 'package:paix_app/Screen/Login/login_screen.dart';
import 'package:paix_app/category_items.dart';
import 'package:paix_app/dummy_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:paix_app/screens/welcomescreen.dart';
//import 'package:paix_app/screens/background_screen.dart';

User loggedInUser;

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8EC9FD),
      //Color(0xFFC69AFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text("PAIX")),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                _auth.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreens()),
                );
              }),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     alignment: Alignment.center,
                //     image: AssetImage('assets/images/girl.png'),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                child: Container(
                  // height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Color(0xFF32629C).withOpacity(.4),
                        Color(0xFF32629C).withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "What brings you to PAIX",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          "Choose a topic to focus on",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,

                  children: DUMMY_CATEGORIES
                      .map((catData) => CategoryItem(
                            catData.title,
                            catData.id,
                            catData.color,
                            catData.image,
                          ))
                      .toList(),
                  // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  //   maxCrossAxisExtent: 200.0,
                  //   childAspectRatio: 2.7 / 2,
                  //   crossAxisSpacing: 10,
                  //   mainAxisSpacing: 10,
                  // ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//children: [
// Container(
// height: 90,
// child:
// ),
