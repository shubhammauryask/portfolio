import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Service/firebaseData.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/navBottom.dart';
import 'package:portfolio/utils/colors.dart';
import 'Service/easy_loading.dart';
import 'firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  EasyLoadingService.initialize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseData.getData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary
      ),
      home: MediaQuery.of(context).size.width <= 667 ? BottomNav() : HomeScreen(),
    );
  }
}


