import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pertemuan7_tugas/pages/login.dart';
import 'models/keranjang.dart';

void main() async {
  Hive.initFlutter();
  Hive.registerAdapter(ItemAdapter());
  await Hive.openBox<Item>('items');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final String _title = 'Shared Preferences & Hive';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: _title,

    theme: ThemeData(
      primarySwatch: Colors.lightGreen,
    ),
    home: const LoginPage(),
  );
}
