import 'package:newtry/domain/entities/customer.dart';

abstract class CustomerRepository {
  Future<void> registerCustomer(Customer customer);
}