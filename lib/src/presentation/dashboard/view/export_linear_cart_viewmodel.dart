import 'package:fl_chart/fl_chart.dart';
import 'package:stacked/stacked.dart';

class ExportLinearChartViewModel extends BaseViewModel {
  bool _loading = false;
  List<FlSpot> data = [];

  ExportLinearChartViewModel();

  bool get loading {
    return _loading;
  }

  set loading(bool isLoading) {
    _loading = isLoading;
    rebuildUi();
  }

  loadData() {
    loading = true;

    data = [
      FlSpot(0, 1),
      FlSpot(1, 3),
      FlSpot(2, 2),
      FlSpot(3, 5),
    ];

    loading = false;
  }
}
