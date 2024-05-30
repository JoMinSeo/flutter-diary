import 'package:flutter/material.dart';

class WriteDiaryFab extends StatelessWidget {
  const WriteDiaryFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => debugPrint('floating 버튼 클릭'),
      child: const Icon(Icons.add),
    );
  }
}
