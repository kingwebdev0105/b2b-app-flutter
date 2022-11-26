// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/providers/account_provider.dart';
import 'package:interlinc_b2b/providers/amount_selection_provider.dart';
import 'package:interlinc_b2b/providers/start_up_provider.dart';
import 'package:interlinc_b2b/router/router.dart';

void main() {
  runApp(App());
  AppRouter.createRoutes();
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StartUpProvider()),
        ChangeNotifierProvider(create: (_) => AmountSelectionProvider()),

        //AccountProvider depends on AmountSelectionProvider for the confirmed payment details
        ChangeNotifierProxyProvider<AmountSelectionProvider, AccountProvider>(
          create: (context) => AccountProvider(),
          update: (context, amountSelection, prevAccount) =>
              prevAccount..updateAmountSelectionProvider(amountSelection),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          accentColor: Constants.DEFAULT_BLUE,
          textTheme: GoogleFonts.robotoTextTheme(textTheme).copyWith(
            //Override theme text styles here
            // headline1:  GoogleFonts.roboto(fontSize: 12.0),
            button: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        ),
        home: StartUpProvider().handleStartUp(),
        navigatorKey: AppRouter.sailor.navigatorKey,
        onGenerateRoute: AppRouter.sailor.generator(),
      ),
    );
  }
}
