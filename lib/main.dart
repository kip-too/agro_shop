import 'package:farm/widgets/custom_grid_view.dart';
import 'package:farm/widgets/services_grid.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';

import 'screens/screens_barrel.dart';

Future<void> main () async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green
      ),
     initialRoute: HomeScreen.id,
      routes: {
        Splashscreen.id:(context) => const Splashscreen(),
        SignUpScreen.id:(context) => const SignUpScreen(),
        LoginScreen.id:(context) => const LoginScreen(),
        OtpScreen.id:(context) => const OtpScreen(),
        ForgotPasswordScreen.id:(context) => const ForgotPasswordScreen(),
        ResetPasswordScreen.id:(context) => const ResetPasswordScreen(),
        PersonalDetailsScreen.id: (context) => const PersonalDetailsScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        ServicesScreen.id: (context) => const ServicesScreen(),
        SeedsScreen.id: (context) => const SeedsScreen(),
        SeedsDetailsScreen.id: (context) => const SeedsDetailsScreen(),

      },


    );
  }
}
