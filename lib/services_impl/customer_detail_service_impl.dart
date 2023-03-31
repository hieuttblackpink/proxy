import 'package:proxy/customer/customer_detail.dart';
import 'package:proxy/services/customer_detail_service.dart';

class CustomerDetailService implements ICustomerDetailService {
  @override
  Future<CustomerDetail> getCustomerDetail(String id) async {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        var age = 23;
        var address = "HCM";
        var phoneNumber = "0912345678";
        var email = "mewmew@gmail.com";

        return CustomerDetail(age, address, phoneNumber, email);
      },
    );
  }
}
