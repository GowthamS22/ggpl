import 'package:get/get.dart';
import 'package:ggpl/models/coupon.dart';

class CouponController extends GetxController {
  var coupons = <Coupon>[].obs;

  @override
  void onInit() {
    fetchCoupons();
    super.onInit();
  }

  void fetchCoupons() {
    List<Coupon> fetchedCoupons = [
      Coupon(id: 1, title: 'FLAT 10% OFF', description: 'ON MINIMUM ORDER OF 150', code: 'PLUSCARES'),
    ];

    coupons.value = fetchedCoupons;
  }

}