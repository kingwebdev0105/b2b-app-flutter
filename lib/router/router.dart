// Package imports:
import 'package:sailor/sailor.dart';

// Project imports:
import 'package:interlinc_b2b/screens/amount_selection_screen.dart';
import 'package:interlinc_b2b/screens/bill_pay_screen.dart';
import 'package:interlinc_b2b/screens/bill_payment_screen.dart';
import 'package:interlinc_b2b/screens/customer_add_screen.dart';
import 'package:interlinc_b2b/screens/customer_find_screen.dart';
import 'package:interlinc_b2b/screens/customer_search_results_screen.dart';
import 'package:interlinc_b2b/screens/enter_amount_screen.dart';
import 'package:interlinc_b2b/screens/home_screen.dart';
import 'package:interlinc_b2b/screens/login_screen.dart';
import 'package:interlinc_b2b/screens/product_list_screen.dart';

class AppRouter {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoutes(
      [
        SailorRoute(
          name: LoginScreen.routeName,
          builder: (_, args, params) => LoginScreen(),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
        SailorRoute(
          name: HomeScreen.routeName,
          builder: (_, args, params) => HomeScreen(),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
        SailorRoute(
          name: AmountSelectionScreen.routeName,
          builder: (_, args, params) => AmountSelectionScreen(args),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
        SailorRoute(
          name: EnterAmountScreen.routeName,
          builder: (_, args, params) => EnterAmountScreen(),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
        SailorRoute(
          name: BillPaymentScreen.routeName,
          builder: (_, args, params) => BillPaymentScreen(),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
        SailorRoute(
          name: ProductListScreen.routeName,
          builder: (_, args, params) => ProductListScreen(),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
        SailorRoute(
          name: CustomerAddScreen.routeName,
          builder: (_, args, params) => CustomerAddScreen(),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
        SailorRoute(
          name: BillPayScreen.routeName,
          builder: (_, args, params) => BillPayScreen(),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
        SailorRoute(
          name: CustomerFindScreen.routeName,
          builder: (_, args, params) => CustomerFindScreen(),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
        SailorRoute(
          name: CustomerSearchResultScreen.routeName,
          builder: (_, args, params) => CustomerSearchResultScreen(),
          defaultTransitions: [SailorTransition.slide_from_right],
        ),
      ],
    );
  }
}
