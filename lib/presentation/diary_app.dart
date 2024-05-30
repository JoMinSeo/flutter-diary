import 'package:flutter/material.dart';
import 'package:flutter_diary/app/auth/auth.dart';
import 'package:flutter_diary/app/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(SignedInImplAdapter());
  Hive.registerAdapter(SigningUpImplAdapter());

  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);

    return MaterialApp.router(
      title: '일기',
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      builder: (context, child) {
        return child!;
      },
    );
  }
}
