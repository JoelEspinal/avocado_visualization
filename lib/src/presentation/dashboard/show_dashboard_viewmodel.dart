import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

class ShowDashboardViewModel extends BaseViewModel {
  final String _avocadosCSV = "assets/data/avocado_prices_exported.csv";
  bool _loading = false;

  ShowDashboardViewModel();

  bool get loading {
    return _loading;
  }

  set loading(bool isLoading) {
    _loading = isLoading;
    rebuildUi();
  }

  loadAvocadoCSV() async {
    loading = true;
    final input = File(_avocadosCSV).openRead();
    final fields = await input
        .transform(utf8.decoder)
        .transform(const CsvToListConverter())
        .toList();
    loading = false;
    print(fields);
  }
}
