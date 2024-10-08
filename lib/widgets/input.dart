import 'package:flutter/material.dart';

class InputTextFormField extends StatefulWidget {
  InputTextFormField({
    super.key,
    this.width,
    this.height,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.obscureText,
    this.suffixIcon,
    this.keyboardType,
  });

  double? width;
  double? height;
  TextEditingController? controller;
  String? hintText;
  Widget? prefixIcon;
  bool? obscureText;
  Widget? suffixIcon;
  TextInputType? keyboardType;

  @override
  State<InputTextFormField> createState() => _InputTextFormFieldState();
}

class _InputTextFormFieldState extends State<InputTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width ?? 250,
        height: widget.height ?? 60,
        child: TextFormField(
          controller: widget.controller,
          // onTap: () async {},
          style: TextStyle(fontSize: 22),
          obscureText: widget.obscureText ?? false,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            hintText: widget.hintText,
            hintStyle: TextStyle(fontSize: 15),
            prefixIcon: widget.prefixIcon,
            filled: true,
            fillColor: Color.fromARGB(255, 240, 237, 237),
            suffixIcon: widget.suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
          ),
        ));
  }
}
