import 'package:flutter/material.dart';

class DeawerPage extends StatefulWidget {
 const  DeawerPage({Key? key}) : super(key: key);

  @override
  State<DeawerPage> createState() => _DeawerPageState();
}

class _DeawerPageState extends State<DeawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
