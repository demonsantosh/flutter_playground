abstract class RegistrationEvent {}

class SubmitRegistrationEvent extends RegistrationEvent {
  final String name;
  final String email;
  final String phone;
  final String password;

  SubmitRegistrationEvent({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });
}