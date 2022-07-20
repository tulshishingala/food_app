import 'package:flutter/material.dart';
import 'package:food_app/login_page.dart';
import 'package:food_app/sign_in.dart';

class WeclomePage extends StatefulWidget {
  const WeclomePage({Key? key}) : super(key: key);

  @override
  State<WeclomePage> createState() => _WeclomePageState();
}

class _WeclomePageState extends State<WeclomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/food1.jpeg'),
                fit: BoxFit.cover,
                opacity: 130,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
            child: Column(
              children: [
                const Text("Quik Delivery", style: TextStyle(fontSize: 42)),
                const SizedBox(height: 20),
                const Text("at Your Doorstop",
                    style: TextStyle(fontSize: 30, color: Colors.white70)),
                const SizedBox(height: 20),
                const Text("Home delivery and online reservation, ",
                    style: TextStyle(fontSize: 18)),
                const Text("system for restaraunts and cafe.",
                    style: TextStyle(fontSize: 18)),
                const SizedBox(height: 280),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white70),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white70),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
