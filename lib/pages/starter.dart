import 'package:blood_donation_app/pages/sign_in.dart';
import 'package:blood_donation_app/pages/sign_up.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void _navigateToSignInScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignInScreen()));
  }

  void _navigateToSignUpScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giọt Hồng'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to Giọt Hồng',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Image.asset(
              'asset/blood.png',
              width: 300,
              height: 300,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _navigateToSignInScreen(context);
                  },
                  child: const Text('Sign In'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _navigateToSignUpScreen(context);
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Forgot your password?'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Reset Password'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
