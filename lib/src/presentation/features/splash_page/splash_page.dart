import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/di/injection_container.dart';
import '../../../core/route/navigation_service.dart';
import '../../bloc/session_timmer_bloc/session_timer_bloc.dart';

@RoutePage()
class SpalasPage extends StatefulWidget {
  const SpalasPage({super.key});

  @override
  State<SpalasPage> createState() => _SpalasPageState();
}

class _SpalasPageState extends State<SpalasPage> {
  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    debugPrint('🔍 AuthCheckScreen: Checking authentication status...');
    
    // Add a small delay for splash screen effect
    await Future.delayed(const Duration(seconds: 1));
    
    if(!mounted) return;

    final sessionBloc = context.read<SessionBloc>();
    sessionBloc.add(const CheckAuthStatus());
    
    // Listen to session state and navigate accordingly
    await for (final state in sessionBloc.stream) {
      if (state is SessionActive) {
        debugPrint('✅ User authenticated - Going to Home');
        if (mounted) {
          sl<NavigationService>().goToHome();
        }
        break;
      } else if (state is SessionInactive) {
        debugPrint('❌ User not authenticated - Going to Login');
        if (mounted) {
          sl<NavigationService>().goToLogin();
        }
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Checking authentication...'),
          ],
        ),
      ),
    );
  }
}
