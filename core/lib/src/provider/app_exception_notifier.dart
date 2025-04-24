import 'package:core/src/exception/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_exception_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppExceptionNotifier extends _$AppExceptionNotifier {
  @override
  AppException? build() {
    return null;
  }

  void notify(AppException exception) {
    state = exception;
  }

  void consume() {
    state = null;
  }
}
