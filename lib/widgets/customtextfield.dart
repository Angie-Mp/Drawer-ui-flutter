import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final String? initialValue;
  final String? labelText;
  final Function(String)? onChanged;

  const CustomTextFieldWidget(
      {
      // super.key,
      this.keyboardType,
      this.prefixIcon,
      this.labelText,
      this.initialValue,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
        ),
      ),
    );
  }
}
