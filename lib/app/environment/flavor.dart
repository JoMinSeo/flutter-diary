import 'package:flutter/material.dart';
import 'package:flutter_diary/app/environment/environment.enum.dart';
import 'package:flutter_diary/core/modules/local/app_local.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Flavor {
  Flavor._();

  static final Flavor _instance = Flavor._();

  static late Environment _env;

  static Flavor get instance => _instance;

  static Environment get env => _env;

  static void initialize(Environment type) {
    _env = type;
  }

  /// [env]에 따라 어플리케이션 초기 설정을 진행한다.
  Future<void> setup() async {
    WidgetsFlutterBinding.ensureInitialized();

    // 환경 파일 로드
    await dotenv.load(fileName: env.dotFileName);

    // final option = env.firebaseOption;

    /// LocalStorage Hive 초기화
    await AppLocal.initHive();

    /// FireBase 초기화
    // await Firebase.initializeApp(
    //   name: option.projectId,
    //   options: option,
    // );

    /// 앱 DI 실행
    // await AppBinder.init();

    // await FirebaseAnalytics.instance
    //     .setAnalyticsCollectionEnabled(_env == Environment.prod ? true : false);
    // if (_env == Environment.prod) {
    //   await FirebaseAnalytics.instance.logAppOpen();
    // }
  }
}
