import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weigh_master_admin/login_page.dart';

import 'firebase_options.dart';
import 'home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weigh Master Admin',
      home: LoginPage(),
    );
  }
}
