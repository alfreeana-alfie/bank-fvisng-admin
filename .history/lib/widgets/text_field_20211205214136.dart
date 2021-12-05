import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    required this.onSaved, required this.hintText
  });

  final String hintText;
  final FormField<String> onSaved;

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black12.withOpacity(0.05),
          hintText: widget.hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}