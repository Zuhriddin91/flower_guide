import 'package:flower_guide/core/constants/imports.dart';
import 'package:flower_guide/view/widgets/text_fields/my_auth_text_field.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController _phoneController =
      TextEditingController(text: '+998');
  final TextEditingController _passwordController = TextEditingController();    
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.all(
                getUniqueW(16.0),
              ),
              child: MyAuthTextField(
                controller: _phoneController,
                hintText: "Telefon raqam",
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) "wwwww";
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                getUniqueW(16.0),
              ),
              child: MyAuthTextField(
                controller: _passwordController,
                hintText: "Parolingizni kiriting",
          
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.isEmpty) "wwwww";
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
