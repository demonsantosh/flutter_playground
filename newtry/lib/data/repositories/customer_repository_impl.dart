import 'package:newtry/domain/entities/customer.dart';
import 'package:newtry/domain/repositories/customer_repository.dart';

class CustomerRepositoryImpl implements CustomerRepository {
  @override
  Future<void> registerCustomer(Customer customer) async {
    // Implement your API call or database operation here
    await Future.delayed(Duration(seconds: 2)); // Simulated API call
  }
}