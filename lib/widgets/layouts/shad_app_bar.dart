import 'package:flutter/material.dart';
import 'package:goal_keeper/app/app_images.dart';
import 'package:goal_keeper/app/themes/themes.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/widgets/animated_search_bar.dart';

class ShadAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShadAppBar({super.key, required this.onChanged, this.onTap});

  final dynamic Function(String) onChanged;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkTheme.colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.only(top: 56.0),
        child: AnimationSearchBar(
          ///! Required
          onChanged: onChanged,
          searchTextEditingController: TextEditingController(),

          ///! Optional. For more customization
          //? Back Button
          backIcon: AssetImage(AppImages.logo),
          backIconColor: Colors.white,
          isBackButtonVisible: true,
          onTap:
              onTap, // It will push and replace this screen when pressing the back button
          //? Close Button
          closeIconColor: Colors.white,
          //? Center Title
          centerTitle: S.current.goal_keeper,
          hintText: S.current.search_goal,
          centerTitleStyle: const TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 20),
          //? Search hint text
          hintStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          //? Search Text
          textStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          //? Cursor color
          cursorColor: Colors.lightBlue.shade300,
          //? Duration
          duration: const Duration(milliseconds: 500),
          //? Height, Width & Padding
          searchFieldHeight: 35, // Total height of the search field
          searchBarHeight: 50, // Total height of this Widget
          searchBarWidth: MediaQuery.of(context).size.width -
              20, // Total width of this Widget
          horizontalPadding: 5,
          verticalPadding: 0,
          //? Search icon color
          searchIconColor: Colors.white.withOpacity(.7),
          //? Search field background decoration
          searchFieldDecoration: BoxDecoration(
              color: darkTheme.colorScheme.selection,
              border:
                  Border.all(color: Colors.black.withOpacity(.2), width: .5),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );

    /* 
    return Theme(
      data: ThemeData(
          colorScheme: ColorSchemes.darkSlate().copyWith(
            background: darkTheme.colorScheme.secondary,
          ),
          radius: 2),
      child: OutlinedContainer(
        clipBehavior: Clip.antiAlias,
        child: AppBar(
          title: Text(
            S.current.my_goals,
            textAlign: TextAlign.justify,
          ),
          leading: [
            ShadAvatar(
              'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
              placeholder: Text('GK'),
            ),
          ],
          trailing: [
            /* 
            OutlineButton(
              density: ButtonDensity.icon,
              onPressed: () {},
              child: const Icon(Icons.search),
            ), */

            OutlineButton(
              density: ButtonDensity.icon,
              onPressed: () {},
              child: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
     */
  }

  @override
  Size get preferredSize => Size.fromHeight(72);
}
