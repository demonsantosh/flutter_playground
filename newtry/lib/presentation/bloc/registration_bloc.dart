import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtry/domain/entities/customer.dart';
import 'package:newtry/domain/usecases/register_customer.dart';
import 'package:newtry/presentation/bloc/registration_event.dart';
import 'package:newtry/presentation/bloc/registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegisterCustomer registerCustomer;

  RegistrationBloc(this.registerCustomer) : super(RegistrationInitial()) {
    on<SubmitRegistrationEvent>(_onSubmitRegistration);
  }

  Future<void> _onSubmitRegistration(
      SubmitRegistrationEvent event,
      Emitter<RegistrationState> emit,
      ) async {
    emit(RegistrationLoading());

    try {
      final customer = Customer(
        name: event.name,
        email: event.email,
        phone: event.phone,
        password: event.password,
      );

      await registerCustomer.execute(customer);
      emit(RegistrationSuccess());
    } catch (e) {
      emit(RegistrationError(e.toString()));
    }
  }
}