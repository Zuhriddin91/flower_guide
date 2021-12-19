import 'package:flower_guide/core/constants/colors.dart';
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
        child: Padding(
          padding: EdgeInsets.all(
            getUniqueW(24.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // LOG IN WITH GOOGLE
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: MyColors.accent,
                    fixedSize: Size(SizeConfig.screenWidth, getUniqueH(40))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(MyIcons.google, color: MyColors.primary),
                    SizedBox(width: getUniqueW(8.0)),
                    Text(
                      "Google orqali kirish",
                      style: TextStyle(
                          fontSize: getUniqueW(16.0), color: MyColors.dark),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getUniqueH(16.0)),
              // PHONE SECTION
              MyAuthTextField(
                controller: _phoneController,
                hintText: "Telefon raqam",
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) "wwwww";
                },
              ),
              SizedBox(height: getUniqueH(16.0)),

              // PASSWORD SECTION
              MyAuthTextField(
                controller: _passwordController,
                hintText: "Parolingizni kiriting",
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.isEmpty) "wwwww";
                },
              ),
              SizedBox(height: getUniqueH(16.0)),

              // LOG IN SECTION
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: MyColors.primary,
                    fixedSize: Size(SizeConfig.screenWidth, getUniqueH(40))),
                onPressed: () {},
                child: Text(
                  "Kirish",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: getUniqueW(16.0)),
                ),
              ),
              SizedBox(height: getUniqueH(32.0)),

              // SIGN UP SECTION
              const Text("Hali ro'yxatdan o'tmaganmisiz?"),
              TextButton(
                onPressed: () {},
                child: const Text("Ro'yxatdan o'tish"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
