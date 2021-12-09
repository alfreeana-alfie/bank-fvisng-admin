import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    required this.onSaved, required this.hintText, this.textInputType
  });

  final String hintText;
  final FormFieldSetter<String> onSaved;
  final TextInputType? textInputType;

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: Values.horizontalValue, vertical: Values.verticalValue),
      child: TextFormField(
        textIn
        keyboardType: widget.textInputType,
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