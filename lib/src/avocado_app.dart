import 'package:flutter/material.dart';

import 'presentation/dashboard/view/dashboard_view.dart';

class AvocadoApp extends StatelessWidget {
  const AvocadoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardView(),
    );
  }
}
