// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/models/current_top_up_step.dart';
import 'package:interlinc_b2b/widgets/buttons/decorated_icon_button.dart';

class EnterDirectTopUpDialog extends StatefulWidget {
  @override
  _EnterDirectTopUpDialogState createState() => _EnterDirectTopUpDialogState();
}

class _EnterDirectTopUpDialogState extends State<EnterDirectTopUpDialog> {
  final Helper _helper = Helper();
  CurrentTopUpStep _currentTopUpStep;

  @override
  void initState() {
    _currentTopUpStep = CurrentTopUpStep();
    super.initState();
  }

  void _incrementStep() {
    if (_currentTopUpStep.step == 2) {
      _helper.showToast('Direct Top Up! Done!');
      Navigator.of(context).pop(false);
    } else {
      setState(() {
        _currentTopUpStep.step = 2;
        _currentTopUpStep.indicator = 'assets/images/step2.png';
        _currentTopUpStep.formLabel = 'Enter Phone Number';
        _currentTopUpStep..positiveButtonLabel = 'Done';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: size.width * 0.90,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DecoratedIconButton(
                iconSource: _currentTopUpStep.indicator,
                size: 80.0,
              ),
              Text(
                'Step ${_currentTopUpStep.step} of 2',
                style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text(
                  _currentTopUpStep.formLabel,
                  // 'test',
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 50.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.number,
                ),
              ),
              FlatButton(
                minWidth: 120.0,
                height: 50.0,
                color: Colors.blue,
                child: Text(
                  _currentTopUpStep.positiveButtonLabel,
                  style: Theme.of(context).textTheme.button,
                ),
                onPressed: _incrementStep,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: FlatButton(
                  minWidth: 120.0,
                  height: 50.0,
                  color: Colors.grey[500],
                  child: Text(
                    'Cancel',
                    style: Theme.of(context).textTheme.button,
                  ),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
