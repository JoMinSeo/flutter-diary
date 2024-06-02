import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

// 앱 상의 [Provider] 들의 상태를 체크할 수 있는 Observer
class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('''{ 
      "provider": "${provider.name ?? provider.runtimeType}",
      "newValue": "$newValue"
    }''');
  }

  @override
  void didDisposeProvider(ProviderBase<Object?> provider, ProviderContainer container) {
    log('${provider.name ?? provider.runtimeType} dispose');
  }

// @override
// void didAddProvider(
//     ProviderBase<Object?> provider,
//     Object? value,
//     ProviderContainer container,
//     ) {
//   log('Provider $provider was initialized with $value');
// }

// @override
// void providerDidFail(
//     ProviderBase<Object?> provider,
//     Object error,
//     StackTrace stackTrace,
//     ProviderContainer container,
//     ) {
//   logE('Provider $provider threw $error at $stackTrace');
// }
}
