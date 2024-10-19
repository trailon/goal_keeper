import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:goal_keeper/app/app_images.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CurrentGoalWidget extends StatelessWidget {
  const CurrentGoalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
          child: ShadCard(
            child: ShadAccordion<({String content, String title})>(
              initialValue: (content: '', title: ''),
              maintainState: false,
              children: [
                ShadAccordionItem(
                  value: (content: 'Content 1', title: 'Title 1'),
                  title: Text("Task 1"),
                  separator: Divider(
                    color: isDarkMode ? Colors.white54 : Colors.grey,
                  ),
                  child: Column(
                    children: [
                      ShadCheckbox(
                        value: false,
                        onChanged: (v) => true,
                        label: const Text('Subtask 1'),
                        sublabel: const Text(
                          'Subtask 1 description',
                        ),
                      ),
                      ShadCheckbox(
                        value: false,
                        onChanged: (v) => true,
                        label: const Text('Subtask 2'),
                        sublabel: const Text(
                          'Subtask 2 description',
                        ),
                      ),
                      ShadCheckbox(
                        value: false,
                        onChanged: (v) => true,
                        label: const Text('Subtask 3'),
                        sublabel: const Text(
                          'Subtask 3 description',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Transform.translate(
            offset: Offset(3, -20),
            child: Transform.rotate(
              angle: -0.6,
              child: Image.asset(
                AppImages.crown,
                height: 50,
              ),
            ),
          ),
        )
      ],
    );
  }
}
