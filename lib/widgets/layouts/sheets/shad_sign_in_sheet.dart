import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:goal_keeper/app/router/router.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/utils/validators.dart';
import 'package:goal_keeper/views/home_view/home_viewmodel.dart';
import 'package:goal_keeper/widgets/shad_components/shad_input_field.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadSignInSheet extends StatelessWidget {
  const ShadSignInSheet(
      {super.key,
      required this.side,
      required this.router,
      required this.homeViewModel,
      required this.formKey});
  final AppRouter router;
  final ShadSheetSide side;
  final GlobalKey<ShadFormState> formKey;
  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: homeViewModel,
        builder: (context, child) {
          return ShadSheet(
            constraints:
                side == ShadSheetSide.left || side == ShadSheetSide.right
                    ? const BoxConstraints(maxWidth: 512)
                    : null,
            title: Text(S.current.sign_in),
            description: Text(S.current.sign_in_text),
            actionsAxis: Axis.vertical,
            actions: [
              ShadForm(
                  key: formKey,
                  child: Column(
                    children: [
                      ShadCustomInputFormField(
                        controller:
                            context.read<HomeViewModel>().userEmailController,
                        onChanged:
                            context.read<HomeViewModel>().userEmailOnChanged,
                        validator: Validators.emailValidator,
                        id: S.current.email,
                        placeHolder: S.current.enter_email,
                      ),
                      ShadCustomInputFormField(
                        controller: context
                            .read<HomeViewModel>()
                            .userPasswordController,
                        onChanged:
                            context.read<HomeViewModel>().userPasswordOnChanged,
                        validator: Validators.passwordValidator,
                        id: S.current.email,
                        placeHolder: S.current.enter_password,
                      ),
                      ShadButton(
                        onPressed:
                            context.read<HomeViewModel>().submitLoginForm,
                        child: AutoSizeText(S.current.sign_in),
                      ),
                    ],
                  )),
            ],
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [],
              ),
            ),
          );
        });
  }
}
