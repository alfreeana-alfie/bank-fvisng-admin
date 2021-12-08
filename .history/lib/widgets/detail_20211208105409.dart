import 'package:flutter/material.dart';

class DetailRow extends StatelessWidget {
  const DetailRow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text('Email'),
          
          Text('Example.com'),
        ],
      ),
    );
  }
}