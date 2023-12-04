import 'package:avocato_visualization/src/presentation/dashboard/show_dashboard_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StackedView<ShowDashboardViewModel> {
  const DashboardView({super.key});

  @override
  Widget builder(
      BuildContext context, ShowDashboardViewModel viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: viewModel.loading
              ? const CircularProgressIndicator(color: Colors.black)
              : const Column(
                  children: [
                    SizedBox(
                      height: 180,
                      width: 300,
                      child: Card(
                        margin: EdgeInsets.symmetric(
                          horizontal: 4.0,
                          vertical: 8.0,
                        ),
                        color: Colors.lightBlueAccent,
                        elevation: 5,
                        child: Text(""),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  @override
  ShowDashboardViewModel viewModelBuilder(BuildContext context) {
    final viewModel = ShowDashboardViewModel();
    viewModel.loadAvocadoCSV();

    return viewModel;
  }
}
