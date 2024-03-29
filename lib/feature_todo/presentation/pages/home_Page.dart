import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_project_task/core/constants/constants.dart';
import 'package:todo_project_task/core/theme/app_theme.dart';
import 'package:todo_project_task/feature_todo/presentation/widgets/bottom_widget.dart';
import 'package:todo_project_task/feature_todo/presentation/widgets/listview_widget.dart';
import 'package:todo_project_task/feature_todo/presentation/widgets/page_top_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(appConstantsProvider);
    final apptheme = AppTheme.of(context);
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: apptheme.colors.backgroundDanger,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const PageTopWidget(),
              SizedBox(
                height: apptheme.spaces.space_200,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: apptheme.spaces.space_250),
                    child: Text(
                      constants.txtTask,
                      style: apptheme.typography.h900,
                    ),
                  ),
                ],
              ),
              const ListViewWidget(),
            ],
          ),
        ),
        bottomNavigationBar: const BottomWidget(),
      ),
    );
  }
}
