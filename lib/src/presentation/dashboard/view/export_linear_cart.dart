import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'export_linear_cart_viewmodel.dart';

class ExportLinearChart extends StackedView<ExportLinearChartViewModel> {
  const ExportLinearChart({super.key});

  @override
  Widget builder(BuildContext context, ExportLinearChartViewModel viewModel,
      Widget? child) {
    return Center(
        child: viewModel.loading
            ? const CircularProgressIndicator()
            : LineChart(
                LineChartData(
                  gridData: const FlGridData(show: false),
                  titlesData: const FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: viewModel.data,
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 2,
                      belowBarData: BarAreaData(show: false),
                      dotData: const FlDotData(show: false),
                    ),
                  ],
                ),
              ));
  }

  @override
  ExportLinearChartViewModel viewModelBuilder(BuildContext context) {
    final viewModel = ExportLinearChartViewModel();
    viewModel.loadData();
    return viewModel;
  }
}
