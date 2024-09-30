import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ProviderScope, StateProvider, Consumer;
import 'package:goal_keeper/generated/l10n.dart';

final searchingProvider = StateProvider.autoDispose((ref) => false);

class AnimationSearchBar extends StatelessWidget {
  const AnimationSearchBar({
    super.key,
    this.searchBarWidth,
    this.searchBarHeight,
    this.onTap,
    this.backIconColor,
    this.closeIconColor,
    this.searchIconColor,
    this.centerTitle,
    this.centerTitleStyle,
    this.searchFieldHeight,
    this.searchFieldDecoration,
    this.cursorColor,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    required this.onChanged,
    required this.searchTextEditingController,
    this.horizontalPadding,
    this.verticalPadding,
    this.isBackButtonVisible,
    required this.backIcon,
    this.duration,
  });

  ///
  final double? searchBarWidth;
  final double? searchBarHeight;
  final double? searchFieldHeight;
  final double? horizontalPadding;
  final double? verticalPadding;
  final void Function()? onTap;
  final Color? backIconColor;
  final Color? closeIconColor;
  final Color? searchIconColor;
  final Color? cursorColor;
  final String? centerTitle;
  final String? hintText;
  final bool? isBackButtonVisible;
  final ImageProvider backIcon;
  final TextStyle? centerTitleStyle;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Decoration? searchFieldDecoration;
  final Duration? duration;
  final TextEditingController searchTextEditingController;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final kduration = duration ?? const Duration(milliseconds: 500);
    final ksearchFieldHeight = searchFieldHeight ?? 40;
    final khPadding = horizontalPadding != null ? horizontalPadding! * 2 : 0;
    final ksearchBarWidth =
        searchBarWidth ?? MediaQuery.of(context).size.width - khPadding;
    final kisBackButtonVisible = isBackButtonVisible ?? true;
    return ProviderScope(
      child: Consumer(builder: (context, ref, __) {
        final kisSearching = ref.watch(searchingProvider);
        final ksearchNotifier = ref.watch(searchingProvider.notifier);
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 0,
              vertical: verticalPadding ?? 0),
          child: SizedBox(
            width: ksearchBarWidth,
            height: searchBarHeight ?? 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                /// back Button
                kisBackButtonVisible
                    ? AnimatedOpacity(
                        opacity: kisSearching ? 0 : 1,
                        duration: kduration,
                        child: AnimatedContainer(
                            curve: Curves.easeInOutCirc,
                            width: kisSearching ? 0 : 45,
                            height: kisSearching ? 0 : 45,
                            duration: kduration,
                            child: FittedBox(
                                child: KBackButton(
                                    image: backIcon,
                                    iconColor: backIconColor,
                                    onTap: onTap))))
                    : AnimatedContainer(
                        curve: Curves.easeInOutCirc,
                        width: kisSearching ? 0 : 35,
                        height: kisSearching ? 0 : 35,
                        duration: kduration),

                /// text
                AnimatedOpacity(
                  opacity: kisSearching ? 0 : 1,
                  duration: kduration,
                  child: AnimatedContainer(
                    curve: Curves.easeInOutCirc,
                    width: kisSearching ? 0 : ksearchBarWidth - 100,
                    duration: kduration,
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        centerTitle ?? S.current.goal_keeper,
                        textAlign: TextAlign.justify,
                        style: centerTitleStyle ??
                            const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                ),

                /// close search
                AnimatedOpacity(
                  opacity: kisSearching ? 1 : 0,
                  duration: kduration,
                  child: AnimatedContainer(
                    curve: Curves.easeInOutCirc,
                    width: kisSearching ? 35 : 0,
                    height: kisSearching ? 35 : 0,
                    duration: kduration,
                    child: FittedBox(
                      child: KCustomButton(
                        widget: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Icon(Icons.close,
                                color: closeIconColor ??
                                    Colors.black.withOpacity(.7))),
                        onPressed: () {
                          ksearchNotifier.state = false;
                          searchTextEditingController.clear();
                        },
                      ),
                    ),
                  ),
                ),

                /// input panel
                AnimatedOpacity(
                  opacity: kisSearching ? 1 : 0,
                  duration: kduration,
                  child: AnimatedContainer(
                    curve: Curves.easeInOutCirc,
                    duration: kduration,
                    width: kisSearching
                        ? ksearchBarWidth - 55 - (horizontalPadding ?? 0 * 2)
                        : 0,
                    height: kisSearching ? ksearchFieldHeight : 20,
                    margin: EdgeInsets.only(
                        left: kisSearching ? 5 : 0,
                        right: kisSearching ? 10 : 0),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    decoration: searchFieldDecoration ??
                        BoxDecoration(
                            color: Colors.black.withOpacity(.05),
                            border: Border.all(
                                color: Colors.black.withOpacity(.2), width: .5),
                            borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      controller: searchTextEditingController,
                      cursorColor: cursorColor ?? Colors.lightBlue,
                      style: textStyle ??
                          const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        hintText: hintText ?? 'Search here...',
                        hintStyle: hintStyle ??
                            const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                        disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                      ),
                      onChanged: onChanged,
                    ),
                  ),
                ),

                ///  search button
                AnimatedOpacity(
                  opacity: kisSearching ? 0 : 1,
                  duration: kduration,
                  child: AnimatedContainer(
                    curve: Curves.easeInOutCirc,
                    duration: kduration,
                    width: kisSearching ? 0 : 35,
                    height: kisSearching ? 0 : 35,
                    child: FittedBox(
                      child: KCustomButton(
                          widget: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(Icons.search,
                                  size: 35,
                                  color: searchIconColor ??
                                      Colors.black.withOpacity(.7))),
                          onPressed: () => ksearchNotifier.state = true),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

class KCustomButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;
  final double? radius;

  const KCustomButton(
      {super.key,
      required this.widget,
      required this.onPressed,
      this.radius,
      this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 50),
        child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(radius ?? 50),
            child: InkWell(
                splashColor: Theme.of(context).primaryColor.withOpacity(.2),
                highlightColor: Theme.of(context).primaryColor.withOpacity(.05),
                onTap: onPressed,
                onLongPress: onLongPress,
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: widget))));
  }
}

class KBackButton extends StatelessWidget {
  final Color? iconColor;
  final ImageProvider image;
  final void Function()? onTap;
  const KBackButton(
      {super.key,
      required this.onTap,
      required this.iconColor,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50),
            child: InkWell(
                splashColor: Theme.of(context).primaryColor.withOpacity(.2),
                highlightColor: Theme.of(context).primaryColor.withOpacity(.05),
                onTap: onTap,
                child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image(
                          image: image,
                          height: 100,
                          fit: BoxFit.fill,
                          width: 100,
                        ))))));
  }
}
