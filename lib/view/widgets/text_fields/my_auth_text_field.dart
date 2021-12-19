import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class MyAuthTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  String? Function(String?)? validator;
  late bool isVisible;

  MyAuthTextField({
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    this.validator,
    Key? key,
  }) : super(key: key);

 late TextFieldProvider _fieldProvider;

  @override
  Widget build(BuildContext context) {
    isVisible = Provider.of<TextFieldProvider>(context).isVisible;
    SizeConfig().init(context);
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: (keyboardType == TextInputType.visiblePassword && isVisible) ? true : false,
      onChanged: (value) {
        // Provider.of<TextFieldProvider>(context, listen: false).value =
        //     value;
        // context.read<TextFieldProvider>().changValue(value);
      },
      decoration: InputDecoration(
        suffixIcon: keyboardType == TextInputType.visiblePassword
            ? IconButton(
                onPressed: () {
                  isVisible = !isVisible;
                  context.read<TextFieldProvider>().changeVisible(isVisible);
                },
                icon: context.watch<TextFieldProvider>().eye,
              )
            : null,
        hintText: hintText,
        filled: true,
        fillColor: MyColors.accent,
        border: UnderlineInputBorder(
          borderSide: const BorderSide(
            style: BorderStyle.none,
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(
            getUniqueW(16),
          ),
        ),
      ),
      style: TextStyle(color: MyColors.text, fontSize: getUniqueW(16)),
    );
  }
}
