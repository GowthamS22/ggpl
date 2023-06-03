import 'package:get/get.dart';
import 'package:ggpl/widgets/bottom_nav_bar.dart';
import '../screens/screens.dart';

class Routes {
  static final routes =[
    GetPage(
      name: '/root',
      page:() => WelcomeScreen(),
      transition: Transition.zoom,
      transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/welcome',
        page:() => WelcomeBannerScreen(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/login',
        page:() => LoginScreen(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/register',
        page:() => RegisterScreen(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/forgot-password',
        page:() => ForgotPasswordScreen(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/verify-account',
        page:() => VerifyAccountScreen(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/home',
        page:() => BottomNavBar(),
        transition: Transition.fade,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/profile',
        title: 'MY PROFILE',
        page:() => ProfileScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/category-products',
        title: 'CATEGORY PRODUCTS',
        page:() => CategoryProducts(),
        transition: Transition.fade,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/offers',
        title: 'OFFERS',
        page:() => OfferScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/single-product',
        title: 'SINGLE PRODUCT',
        page:() => SingleProductScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/cart',
        title: 'SHOPPING CART',
        page:() => CartScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/coupons',
        title: 'Coupons',
        page:() => CouponScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/address',
        title: 'Address',
        page:() => AddressScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/add-address',
        title: 'New Address',
        page:() => AddAddressScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/order-success',
        title: 'ORDER PLACED SUCCESSFULLY',
        page:() => OrderSuccessScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/wishlist',
        title: 'WISHLIST',
        page:() => WishlistScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/my-orders',
        title: 'MY ORDERS',
        page:() => MyOrdersScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/notifications',
        title: 'NOTIFICATIONS',
        page:() => NotificationScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/faq',
        title: 'FAQs',
        page:() => FaqScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/terms-and-conditions',
        title: 'Terms & Conditions',
        page:() => TermsAndConditionsScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/help-support',
        title: 'Help & Support',
        page:() => HelpSupportScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: '/my-address',
        title: 'My Address',
        page:() => MyAddressScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500)
    )
  ];
}