import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/session_timmer_bloc/session_timer_bloc.dart';

class SessionWrapper extends StatefulWidget {
  final Widget child;

  const SessionWrapper({super.key, required this.child});

  @override
  State<SessionWrapper> createState() => _SessionWrapperState();
}

class _SessionWrapperState extends State<SessionWrapper>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    debugPrint('🎬 SessionWrapper: initState - Adding lifecycle observer');
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    debugPrint('🎬 SessionWrapper: dispose - Removing lifecycle observer');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint('🔄 App Lifecycle Changed: $state');
    final sessionBloc = context.read<SessionBloc>();

    switch (state) {
      case AppLifecycleState.resumed:
        debugPrint('▶️ App Resumed - Triggering AppResumed event');
        sessionBloc.add(AppResumed());
        break;
      case AppLifecycleState.paused:
        debugPrint('⏸️ App Paused - Triggering AppPaused event');
        sessionBloc.add(AppPaused());
        break;
      case AppLifecycleState.inactive:
        debugPrint('😴 App Inactive');
        break;
      case AppLifecycleState.detached:
        debugPrint('🔌 App Detached');
        break;
      case AppLifecycleState.hidden:
        debugPrint('👻 App Hidden');
        break;
    }
  }

  void _onUserInteraction() {
    debugPrint('👆 User interaction detected in SessionWrapper');
    context.read<SessionBloc>().add(UserInteraction());
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (_) => _onUserInteraction(),
      onPointerMove: (_) => _onUserInteraction(),
      child: widget.child,
    );
  }
}
