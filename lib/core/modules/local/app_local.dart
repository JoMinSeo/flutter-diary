import 'package:flutter_diary/features/auth/data_source/local/auth.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

abstract class AppLocal {
  AppLocal._();

  static String authBoxName = 'auth';

  static late Box<Auth> authBox;

  static Future<void> initHive() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDirectory.path);

    Hive
      ..registerAdapter(SignedInImplAdapter())
      ..registerAdapter(SigningUpImplAdapter());

    authBox = await Hive.openBox<Auth>(authBoxName);
  }

  static void clearCache() {
    authBox.clear();
  }
}