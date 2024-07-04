import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'adddata.dart';

class Authenticationscreen extends StatefulWidget {
  @override
  State<Authenticationscreen> createState() => _AuthenticationscreenState();
}

class _AuthenticationscreenState extends State<Authenticationscreen> {
 final FirebaseAuth _auth = FirebaseAuth.instance;

 final TextEditingController _emailController = TextEditingController();

 final TextEditingController _passwordController = TextEditingController();

 Future<void> _Signup()async{
   try{
     UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: _emailController.text, password:_passwordController.text);
     print('User Signed Up: ${userCredential}');
 } catch(e){
     print('Failed to signup : $e');
   }
}

Future<void> _login(BuildContext context) async{
   try{
     UserCredential userCredential =await _auth.signInWithEmailAndPassword(email:_emailController.text, password: _passwordController.text);
   Navigator.push(context, MaterialPageRoute(builder: (context)=>save()));
   }catch(e){
     print('Failed to login : $e');
   }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FireBase Authentication'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email'
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _Signup, child: Text('Signup'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:(){ _login(context);}, child: Text('Login')
            ),
          ],
        ),
      ),
    );
  }
}

