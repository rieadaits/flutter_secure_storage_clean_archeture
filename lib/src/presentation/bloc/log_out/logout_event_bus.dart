import 'dart:async';

enum LogoutEvent { forceLogout }

class LogoutEventBus {
  LogoutEventBus._internal();
  static final LogoutEventBus _instance = LogoutEventBus._internal();
  factory LogoutEventBus() => _instance;

  final _controller = StreamController<LogoutEvent>.broadcast();

  Stream<LogoutEvent> get stream => _controller.stream;

  void emit(LogoutEvent event) {
    _controller.add(event);
  }

  void dispose() {
    _controller.close();
  }
}
