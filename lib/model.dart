// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class ModelScreen extends StatefulWidget {
  final List<String> formData;
  const ModelScreen({
    Key? key,
    required this.formData,
  }) : super(key: key);

  @override
  State<ModelScreen> createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Color(0xff01356F),
          title: Text(
            'Diabetes Detection',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          centerTitle: false,
        ),
      body: 
    );
  }
}
