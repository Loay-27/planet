import 'package:flutter/material.dart';
import 'package:untitled1/screen/widget/custom_button.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String routeName = '/Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/48e3ac1944450fcae09e68a9ccd37c17 1.png'),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 270,
            ),
            const Text(
                'Explore\nThe\nUniverse',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 300),
            CustomButton(
              onPress: (){
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
