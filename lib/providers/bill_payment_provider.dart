// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/models/grid_model.dart';

class BillPaymentProvider with ChangeNotifier {
  final Helper _helper = Helper();

  List<List<GridModel>> get generatebillPaymentGrid {
    return [
      [
        GridModel(label: 'NWC Pay', fontColor: Colors.white),
        GridModel(label: 'FLOW', fontColor: Colors.white),
      ],
      [
        GridModel(label: 'JPSCO', fontColor: Colors.white),
        GridModel(label: 'Digicel', fontColor: Colors.white),
      ],
      [
        GridModel(label: 'Other', fontColor: Colors.white),
      ],
    ];
  }
}
