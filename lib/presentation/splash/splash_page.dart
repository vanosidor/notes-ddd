import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/auth_bloc.dart';
import 'package:notes_ddd/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.when(
        initial: () => {},
        authenticated: () => print('User authenticated'),
        unauthenticated: () => context.router.push(const SignInRoute()),
      ),
      child: const Scaffold(
        body: CircularProgressIndicator(),
      ),
    );
  }
}
