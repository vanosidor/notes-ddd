import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes_ddd/application/auth/auth_bloc.dart';
import 'package:notes_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:notes_ddd/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Form(
          autovalidateMode:
              context.read<SignInFormBloc>().state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
          child: ListView(padding: const EdgeInsets.all(8), children: [
            SvgPicture.asset(
              'assets/images/notes.svg',
              width: 130,
              height: 130,
            ),
            const SizedBox(height: 24),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
              onChanged: (value) => context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.emailChanged(value)),
              validator: (value) => context
                  .read<SignInFormBloc>()
                  .state
                  .email
                  .value
                  .fold(
                      (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null),
                      (_) => null),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              obscureText: true,
              autocorrect: false,
              onChanged: (value) => context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
              validator: (value) => context
                  .read<SignInFormBloc>()
                  .state
                  .password
                  .value
                  .fold(
                      (f) => f.maybeMap(
                          shortPassword: (_) => 'Short Password',
                          orElse: () => null),
                      (_) => null),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: TextButton(
                        onPressed: () => context.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed()),
                        child: const Text(
                          'SIGN IN',
                          style: TextStyle(fontSize: 16),
                        ))),
                Expanded(
                    child: TextButton(
                        onPressed: () => context.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .registerWithEmailAndPasswordPressed()),
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(fontSize: 16),
                        )))
              ],
            ),
            ElevatedButton(
              onPressed: () => context
                  .read<SignInFormBloc>()
                  .add(const SignInFormEvent.signInWithGooglePressed()),
              child: const Text(
                'SIGN IN WITH GOOGLE',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            if (context.read<SignInFormBloc>().state.isSubmitting) ...[
              const SizedBox(
                height: 8,
              ),
              const LinearProgressIndicator(),
            ]
          ]),
        );
      },
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                    (failure) => FlushbarHelper.createError(
                        message: failure.map(
                            canceledByUser: (_) => 'Canceled by user',
                            invalidEmailAndPassword: (_) =>
                                'Invalid email and password',
                            emailIsAlreadyInUse: (_) =>
                                'Email is already in use',
                            serverError: (_) => 'Server error')).show(context),
                    (_) {
                  context.router.push(const NotesOverviewRoute());
                  //Why need check here?
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.authCheckedRequested());
                }));
      },
    );
  }
}
