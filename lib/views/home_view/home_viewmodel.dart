import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:goal_keeper/app/enums.dart';
import 'package:goal_keeper/app/router/router.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/models/category_model.dart';
import 'package:goal_keeper/services/storage_service.dart';
import 'package:goal_keeper/widgets/layouts/sheets/shad_auth_sheet.dart';
import 'package:goal_keeper/widgets/layouts/sheets/shad_category_pick_sheet.dart';
import 'package:goal_keeper/widgets/layouts/sheets/shad_sign_in_sheet.dart';
import 'package:goal_keeper/widgets/layouts/sheets/shad_sign_up_sheet.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../app/blueprints/base_viewmodel.dart';

class HomeViewModel extends BaseViewModel {
  ShadAuthModal? authNav;
  final formKey = GlobalKey<ShadFormState>();
  final signinformKey = GlobalKey<ShadFormState>();
  bool obscure = true;
  TextEditingController userNameController =
      TextEditingController(text: kDebugMode ? "veliksu" : null);
  TextEditingController userEmailController =
      TextEditingController(text: kDebugMode ? "cetinelv@gmail.com" : null);
  TextEditingController userFirstNameController =
      TextEditingController(text: kDebugMode ? "Kaan" : null);
  TextEditingController userPasswordController =
      TextEditingController(text: kDebugMode ? "315513" : null);

  final shadcn.StepperController stepperController =
      shadcn.StepperController(currentStep: 0);
  int get currentStep => stepperController.value.currentStep;

  List<GoalCategory> categories = [];

  List<GoalCategory> get categoriesWithGoals =>
      categories.where((category) => category.goals.isNotEmpty).toList();
  @override
  void disposeModel() {}

  @override
  Future<void> testScenario() async {}

  @override
  Future<void> getData() async {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      setViewDidLoad(true);
      await checkForAuth();
      await fetchCategories();
      notifyListeners();
    });
  }

  Future<void> checkForAuth([bool bypass = false]) async {
    if (supaClient.auth.currentUser == null &&
        (!StorageService.getAskedForAuthOnce() || bypass)) {
      await authBottomSheetAsk(bypass);
      switch (authNav) {
        case ShadAuthModal.signUp:
          return signUpModalPopup();
        case ShadAuthModal.signIn:
          return signInModalPopup();
        default:
          if (!bypass) {
            await showShadDialog(
              context: context,
              builder: (context) => ShadDialog.alert(
                title: AutoSizeText(S.current.we_dont_wanna_bore_you),
                child:
                    AutoSizeText(S.current.we_dont_wanna_bore_you_description),
              ),
            );
            await super.supaClient.auth.signInAnonymously();
          }
      }
      await StorageService.setAskedForAuthOnce();
    }
  }

  Future<void> fetchCategories() async {
    categories = await supaService.fetchCategories();
  }

  Future<void> selectACategory() async {
    final selectedCategory = await showShadSheet<GoalCategory?>(
      context: context,
      side: ShadSheetSide.bottom,
      animateIn: [
        SlideEffect(
          begin: Offset(0, 1),
          end: Offset.zero,
          curve: Curves.bounceIn,
          delay: Duration(seconds: 0),
          duration: Duration(seconds: 1),
        ),
      ],
      animateOut: [
        SlideEffect(
          begin: Offset.zero,
          end: Offset(0, 1),
          curve: Curves.linear,
          duration: Duration(seconds: 1),
        ),
      ],
      builder: (context) => ShadCategoryPickSheet(
        side: ShadSheetSide.bottom,
        router: appRouter,
        categories: categories,
      ),
    );

    if (selectedCategory == null) return;

    if (selectedCategory.categoryName == "custom") {
      return;
    }

    createGoalBySelectedCategory(selectedCategory);
  }

  Future<void> createGoalBySelectedCategory(
      GoalCategory selectedCategory) async {}

  Future<void> authBottomSheetAsk([bool bypass = false]) async {
    authNav = await showShadSheet<ShadAuthModal?>(
      side: ShadSheetSide.bottom,
      context: context,
      barrierColor: Colors.transparent,
      animateIn: [
        SlideEffect(
          begin: Offset(0, 1),
          end: Offset.zero,
          curve: Curves.bounceIn,
          duration: Duration(seconds: bypass ? 1 : 4),
        ),
      ],
      animateOut: [
        SlideEffect(
          begin: Offset.zero,
          end: Offset(0, 1),
          curve: Curves.linear,
          duration: Duration(seconds: 2),
        ),
      ],
      builder: (context) => ShadAuthModalSheet(
        side: ShadSheetSide.bottom,
        router: appRouter,
      ),
    );
  }

  Future<void> signInModalPopup() async {
    await showShadSheet(
      side: ShadSheetSide.bottom,
      context: context,
      builder: (context) => ShadSignInSheet(
        formKey: signinformKey,
        homeViewModel: this,
        side: ShadSheetSide.bottom,
        router: appRouter,
      ),
    );
  }

  Future<void> signUpModalPopup() async {
    await showShadSheet(
      side: ShadSheetSide.bottom,
      context: context,
      builder: (context) => ShadSignUpSheet(
        side: ShadSheetSide.bottom,
        homeViewModel: this,
        router: appRouter,
        formKey: formKey,
      ),
    );
  }

  Future<void> pushToDetailView() async {
    await appRouter.push(const DetailViewRoute());
    debugPrint('Returned from Detail View');
  }

  Future<void> goalSearch(String searchText) async {
    debugPrint(searchText);
  }

  Future<void> logout() async {}

  nextStep() {
    final validated = formKey.currentState!.validate();
    if (validated) {
      stepperController.nextStep();
      notifyListeners();
    }
  }

  submitForm() async {
    final validateAll = formKey.currentState!.validate();
    if (validateAll) {
      EasyLoading.show();
      await supaService.register(
        email: userEmailController.text,
        password: userPasswordController.text,
        firstname: userFirstNameController.text,
        username: userNameController.text,
      );
      appRouter.maybePop();
    }
  }

  submitLoginForm() async {
    final validateAll = signinformKey.currentState!.validate();
    if (validateAll) {
      EasyLoading.show();
      await supaService.login(
        email: userEmailController.text,
        password: userPasswordController.text,
      );
      appRouter.maybePop();
    }
  }

  userNameOnChanged(String value) {
    userNameController.text = value;
    notifyListeners();
  }

  userEmailOnChanged(String value) {
    userEmailController.text = value;
    notifyListeners();
  }

  userFirstNameOnChanged(String value) {
    userFirstNameController.text = value;
    notifyListeners();
  }

  userPasswordOnChanged(String value) {
    userPasswordController.text = value;
    notifyListeners();
  }

  switchObscure() {
    obscure = !obscure;
    notifyListeners();
  }

  final colorWithOpacity = Colors.white.withOpacity(0.9);
  Color? currentStepChecker(int index) =>
      stepperController.value.currentStep == index ? colorWithOpacity : null;

  void testMethod() {
    fetchCategories();
  }
}
