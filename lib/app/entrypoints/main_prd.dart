import 'package:flutter_diary/app/environment/environment.enum.dart';
import 'package:flutter_diary/app/environment/flavor.dart';
import 'package:flutter_diary/presentation/diary_app.dart';

void main() async {
  Flavor.initialize(Environment.prod);

  await runFlavoredApp();
}