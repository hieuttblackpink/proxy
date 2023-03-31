import 'package:proxy/customer/customer_detail.dart';
import 'package:proxy/services/customer_detail_service.dart';

class CustomerDetailServiceProxy implements ICustomerDetailService {
  final ICustomerDetailService service;
  final Map<String, CustomerDetail> customerDetailCache =
      <String, CustomerDetail>{};

  CustomerDetailServiceProxy(this.service);

  @override
  Future<CustomerDetail> getCustomerDetail(String id) async {
    if (customerDetailCache.containsKey(id)) {
      return customerDetailCache[id] as CustomerDetail;
    }

    var customerDetail = await service.getCustomerDetail(id);
    customerDetailCache[id] = customerDetail;

    return customerDetail;
  }
}
