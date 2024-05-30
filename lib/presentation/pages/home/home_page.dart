import 'package:flutter/material.dart';
import 'package:flutter_diary/app/style/app_styles.dart';
import 'package:flutter_diary/core/helper/extension/text_extension.dart';
import 'package:flutter_diary/presentation/pages/home/widgets/write_diary_fab.dart';
import 'package:flutter_diary/presentation/widgets/base/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  Widget buildPage(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          automaticallyImplyLeading: false,
          expandedHeight: 160,
          collapsedHeight: 80,
          backgroundColor: const Color(0xFFF1F1EF),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: const EdgeInsetsDirectional.only(start: 32, bottom: 16),
            title: Text(
              'Good\nevening',
              style: $styles.text.headline3.textColor(Colors.black),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => print('홈 앱바 아이콘 버튼 탭'),
              icon: const Icon(Icons.person),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('May 2023'),
                Container(height: 10, width: 100, color: Colors.red),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text('$index', textScaler: const TextScaler.linear(5)),
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }

  @override
  Widget? buildFloatingActionButton(WidgetRef ref) {
    return const WriteDiaryFab();
  }

  @override
  FloatingActionButtonLocation? get floatingActionButtonLocation => FloatingActionButtonLocation.centerFloat;
}
