import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfa.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions( apiKey: "AIzaSyDMMmsttm48C-TraiHbB0xIFEJdTFeQYz0", appId: "1:157535920397:android:9cfd15487a0213dfae1044", messagingSenderId: "157535920397", projectId: "turizmuygulama-68eb1", ), );

 
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}


