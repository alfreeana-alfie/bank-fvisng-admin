import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:flutter/material.dart';

class TextFieldInitialCustom extends StatefulWidget {
  const TextFieldInitialCustom({required this.onSaved, required this.hintText, required this.initialText});

  final String hintText;
  final String initialText;
  final FormFieldSetter<String> onSaved;

  @override
  _TextFieldInitialCustomState createState() => _TextFieldInitialCustomState();
}

class _TextFieldInitialCustomState extends State<TextFieldInitialCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: Values.horizontalValue, vertical: Values.verticalValue),
      child: TextFormField(
        initialValue: ,
        onChanged: widget.onSaved,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black12.withOpacity(0.05),
          hintText: widget.hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
