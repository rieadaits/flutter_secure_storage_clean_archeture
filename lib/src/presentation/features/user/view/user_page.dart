import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/features/user/widgets/user_item.dart';

import '../../../../core/di/injection_container.dart';
import '../../../bloc/user_bloc/user_bloc.dart';
import '../../../bloc/user_bloc/user_event.dart';
import '../../../bloc/user_bloc/user_state.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(userRepository: sl()),
      child: Scaffold(
        appBar: AppBar(title: Text("User")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state is UserLoading) {
                  return Center(child: CircularProgressIndicator());
                }
                if (state is UserSuccess) {
                  return UserItem(user: state.user);
                }
                if (state is UserFailure) {
                  return Text(state.message);
                }
                return Align(
                  alignment: Alignment.topCenter,
                  child: FilledButton(
                  onPressed: () {
                    context.read<UserBloc>().add(GetUserEvent());
                  },
                  child: Text("Get User"),
                ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
