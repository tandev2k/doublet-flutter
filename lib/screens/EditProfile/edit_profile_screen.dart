import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp_shop_app/components/rounded_button.dart';
import 'package:sp_shop_app/components/rounded_input_field.dart';
import 'package:sp_shop_app/controllers/auth_controller.dart';
import 'package:sp_shop_app/screens/Profile/components.dart/profile_pic.dart';
import 'package:sp_shop_app/utils/constants.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());
    final user = authController.user;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          Constants.PROFILE,
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              ProfilePic(),
              SizedBox(
                height: 20,
              ),
              RoundedInputField(
                isReadOnly: true,
                initialText: user['email'],
                // hintText: user['email'],
                icon: Icon(Icons.mail),
              ),
              RoundedInputField(
                initialText: user['name'],
                labelText: Constants.FULL_NAME,
                hintText: Constants.FULL_NAME,
                icon: Icon(Icons.people),
              ),
              SizedBox(
                height: 40,
              ),
              RoundedButton(press: () {}, text: Constants.SAVE)
            ]),
      ),
    );
  }
}
