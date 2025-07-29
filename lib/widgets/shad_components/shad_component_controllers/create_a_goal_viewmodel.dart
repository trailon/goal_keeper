import 'package:goal_keeper/app/blueprints/base_viewmodel.dart';

class CreateAGoalViewModel extends BaseViewModel {
  bool isChained = false;
  DateTime estimatedAccomplishDate = DateTime.now().add(Duration(days: 3));
  @override
  void disposeModel() {}

  @override
  Future<void> getData() async {}

  @override
  Future<void> testScenario() async {}

  void setIsChained(bool value) {
    isChained = value;
    notifyListeners();
  }

  void setEstimatedAccomplishDate(DateTime value) {
    estimatedAccomplishDate = value;
    notifyListeners();
  }
}
