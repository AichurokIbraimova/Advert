import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hintext,
    this.controller,
    this.maxLines,
    this.onTap,
    this.prefixIcon,
    this.focusNode,
  }) : super(key: key);
  final String? hintext;
  final TextEditingController? controller;
  final int? maxLines;
  final void Function()? onTap;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      onTap: onTap,
      focusNode: focusNode,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(),
        filled: true,
        hintText: hintext,
      ),
    );
  }
}
