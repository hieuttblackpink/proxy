import 'package:proxy/customer/customer_detail.dart';

abstract class ICustomerDetailService {
  Future<CustomerDetail> getCustomerDetail(String id);
}
