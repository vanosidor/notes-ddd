import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Form(
          // TODO check
          autovalidateMode: AutovalidateMode.always,
          child: ListView(children: [
            const Text('📒',
                style: TextStyle(fontSize: 130), textAlign: TextAlign.center),
            const SizedBox(height: 8),
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
                  .email
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
                        onPressed: () => {},
                        child: const Text(
                          'SIGN IN',
                          style: TextStyle(fontSize: 16),
                        ))),
                Expanded(
                    child: TextButton(
                        onPressed: () => {},
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(fontSize: 16),
                        )))
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'SIGN IN WITH GOOGLE',
                style: TextStyle(
                    backgroundColor: Colors.lightBlue,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        );
      },
      listener: (context, state) {},
    );
  }
}
