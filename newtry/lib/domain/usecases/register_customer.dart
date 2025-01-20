import 'package:newtry/domain/entities/customer.dart';
import 'package:newtry/domain/repositories/customer_repository.dart';

class RegisterCustomer {
  final CustomerRepository repository;

  RegisterCustomer(this.repository);

  Future<void> execute(Customer customer) {
    return repository.registerCustomer(customer);
  }
}