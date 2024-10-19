import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' hide Stepper, Step;
import 'package:goal_keeper/app/router/router.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/utils/validators.dart';
import 'package:goal_keeper/views/home_view/home_viewmodel.dart';
import 'package:goal_keeper/widgets/shad_components/shad_input_field.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;
import 'package:shadcn_ui/shadcn_ui.dart';

/* 
class AddressEntryView extends StatelessWidget {
  const AddressEntryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddressEntryViewModel(),
      builder: (context, _) {
        return const BasePageView<AddressEntryViewModel>(
          content: _ViewContent(),
        );
      },
    );
  }
}
 */
class ShadSignUpSheet extends StatelessWidget {
  const ShadSignUpSheet(
      {super.key,
      required this.side,
      required this.router,
      required this.homeViewModel,
      required this.formKey});
  final AppRouter router;
  final ShadSheetSide side;
  final HomeViewModel homeViewModel;
  final GlobalKey<ShadFormState> formKey;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: homeViewModel,
      builder: (context, child) => ShadSheet(
        constraints: side == ShadSheetSide.left || side == ShadSheetSide.right
            ? const BoxConstraints(maxWidth: 512)
            : null,
        title: Text(S.current.sign_up),
        description: Text(S.current.sign_up_text_description),
        actions: [],
        child: ShadForm(
          key: formKey,
          child: shadcn.Theme(
            data: shadcn.ThemeData(
              colorScheme: shadcn.ColorSchemes.darkSlate(),
              radius: 0.7,
            ),
            child: Selector<HomeViewModel, int>(
              selector: (context, model) => model.currentStep,
              builder: (context, currentStep, child) => shadcn.Stepper(
                direction: Axis.vertical,
                controller: context.read<HomeViewModel>().stepperController,
                size: shadcn.StepSize.large,
                variant: shadcn.StepVariant.circleAlt,
                steps: [
                  shadcn.Step(
                    title: AutoSizeText(
                      S.current.username,
                      style: TextStyle(
                          color: context
                              .read<HomeViewModel>()
                              .currentStepChecker(0),
                          fontWeight: FontWeight.bold),
                    ),
                    icon: Icon(Icons.tag),
                    contentBuilder: (context) => ShadCustomInputFormField(
                      controller:
                          context.read<HomeViewModel>().userNameController,
                      onChanged:
                          context.read<HomeViewModel>().userNameOnChanged,
                      onPressed: context.read<HomeViewModel>().nextStep,
                      validator: Validators.userNameValidator,
                      enabled: 0 <= currentStep,
                      id: S.current.username,
                      placeHolder: S.current.enter_username,
                      description: S.current.user_name_description,
                    ),
                  ),
                  shadcn.Step(
                    title: AutoSizeText(
                      S.current.email,
                      style: TextStyle(
                          color: context
                              .read<HomeViewModel>()
                              .currentStepChecker(1),
                          fontWeight: FontWeight.bold),
                    ),
                    icon: Icon(Icons.mail),
                    contentBuilder: (context) => ShadCustomInputFormField(
                      controller:
                          context.read<HomeViewModel>().userEmailController,
                      onChanged:
                          context.read<HomeViewModel>().userEmailOnChanged,
                      onPressed: context.read<HomeViewModel>().nextStep,
                      validator: Validators.emailValidator,
                      enabled: 1 <= currentStep,
                      id: S.current.email,
                      placeHolder: S.current.enter_email,
                      description: S.current.enter_email_description,
                    ),
                  ),
                  shadcn.Step(
                    title: AutoSizeText(
                      S.current.name,
                      style: TextStyle(
                          color: context
                              .read<HomeViewModel>()
                              .currentStepChecker(2),
                          fontWeight: FontWeight.bold),
                    ),
                    icon: Icon(Icons.person),
                    contentBuilder: (context) => ShadCustomInputFormField(
                      controller:
                          context.read<HomeViewModel>().userFirstNameController,
                      onChanged:
                          context.read<HomeViewModel>().userFirstNameOnChanged,
                      onPressed: context.read<HomeViewModel>().nextStep,
                      validator: Validators.nameValidator,
                      enabled: 2 <= currentStep,
                      id: S.current.name,
                      placeHolder: S.current.enter_name,
                      description: S.current.enter_name_description,
                    ),
                  ),
                  shadcn.Step(
                    title: AutoSizeText(
                      S.current.password,
                      style: TextStyle(
                          color: context
                              .read<HomeViewModel>()
                              .currentStepChecker(3),
                          fontWeight: FontWeight.bold),
                    ),
                    icon: Icon(Icons.password),
                    contentBuilder: (context) => ShadCustomInputFormField(
                      controller:
                          context.read<HomeViewModel>().userPasswordController,
                      onChanged:
                          context.read<HomeViewModel>().userPasswordOnChanged,
                      onPressed: context.read<HomeViewModel>().submitForm,
                      validator: Validators.passwordValidator,
                      enabled: 3 <= currentStep,
                      id: S.current.password,
                      obscureText: true,
                      submitText: S.current.sign_up,
                      placeHolder: S.current.enter_password,
                      description: S.current.enter_password,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* Column(
            children: [
              ShadCustomInputFormField(
                id: S.current.username,
                label: S.current.username,
                placeHolder: S.current.enter_username,
                description: S.current.user_name_description,
              ),
              Divider(),
              ShadCustomInputFormField(
                id: S.current.email,
                label: S.current.email,
                placeHolder: S.current.enter_email,
                description: S.current.enter_email_description,
              ),
              Divider(),
              ShadCustomInputFormField(
                id: S.current.name,
                label: S.current.name,
                placeHolder: S.current.enter_name,
                description: S.current.enter_name_description,
              ),
              Divider(),
              ShadCustomInputFormField(
                id: S.current.last_name,
                label: S.current.last_name,
                placeHolder: S.current.enter_last_name,
                description: S.current.enter_last_name_description,
              ),
              Divider(),
            ],
          ), */

class ShadInputDatas {
  final String id;
  final String label;
  final String placeHolder;
  final String description;

  ShadInputDatas(
      {required this.id,
      required this.label,
      required this.placeHolder,
      required this.description});
}
