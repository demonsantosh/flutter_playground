import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtry/data/repositories/customer_repository_impl.dart';
import 'package:newtry/domain/usecases/register_customer.dart';
import 'package:newtry/presentation/bloc/registration_bloc.dart';
import 'package:newtry/presentation/pages/registration_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => RegistrationBloc(
          RegisterCustomer(
            CustomerRepositoryImpl(),
          ),
        ),
        child: RegistrationPage(),
      ),
    );
  }
}