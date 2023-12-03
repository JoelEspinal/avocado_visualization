import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

class ShowDashboardViewModel extends BaseViewModel {
  final String _avocadosCSV = "assets/data/avocado_prices_exported.csv";

  ShowDashboardViewModel();

  loadAvocadoCSV() async {
    final input = File(_avocadosCSV).openRead();
    final fields = await input
        .transform(utf8.decoder)
        .transform(const CsvToListConverter())
        .toList();

    print(fields);
  }
}
