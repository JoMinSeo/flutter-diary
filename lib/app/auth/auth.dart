import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'auth.g.dart';

part 'auth.freezed.dart';

@freezed
sealed class Auth extends HiveObject with _$Auth {
  @HiveType(typeId: 0)
  factory Auth.signedIn({
    @HiveField(0, defaultValue: '') required String name,
  }) = SignedIn;

  @HiveType(typeId: 1)
  factory Auth.signingUp({
    @HiveField(0, defaultValue: '') required String name,
  }) = SigningUp;

  Auth._();

  factory Auth.signedOut() = SignedOut;

  bool get isAuth => switch (this) {
    SignedIn() => true,
    SigningUp() => false,
    SignedOut() => false,
  };
}