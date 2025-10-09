import 'package:dashboard/feature/dashbord/presentation/view/dashbord_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdabtiveDashBord());
}

class AdabtiveDashBord extends StatelessWidget {
  const AdabtiveDashBord({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashBordView(),
    );
  }
}


