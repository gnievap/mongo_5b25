import 'package:flutter/material.dart';
import 'package:mongo5b25/screens/main_screen.dart';
import 'package:mongo5b25/services/mongo_service.dart';
import 'package:mongo5b25/widgets/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoService().connect();
  print('Conexión a MongoDB establecida.');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: tema1(),
      home: const MainScreen(),
    );
  }
}
