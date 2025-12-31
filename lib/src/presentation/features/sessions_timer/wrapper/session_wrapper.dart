import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/features/sessions_timer/bloc/session_timer_bloc.dart';

class SessionWrapper extends StatefulWidget {
  final Widget child;
  final VoidCallback onSessionTimeout;

  const SessionWrapper({
    super.key,
    required this.child,
    required this.onSessionTimeout,
  });

  @override
  State<SessionWrapper> createState() => _SessionWrapperState();
}

class _SessionWrapperState extends State<SessionWrapper> with WidgetsBindingObserver{

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final sessionBloc = context.read<SessionTimerBloc>();
    
    switch (state) {
      case AppLifecycleState.resumed:
        sessionBloc.add(AppResumed());
        break;
      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
        sessionBloc.add(AppPaused());
        break;
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        break;
    }
  }

@override
  Widget build(BuildContext context) {
    return BlocListener<SessionTimerBloc, SessionState>(
      listener: (context, state) {
        if (state is SessionTimeout) {
          widget.onSessionTimeout();
        }
      },
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => _resetSession(context),
        onPanDown: (_) => _resetSession(context),
        child: widget.child,
      ),
    );
  }
    void _resetSession(BuildContext context) {
    context.read<SessionTimerBloc>().add(ResetSession());
  }
}
