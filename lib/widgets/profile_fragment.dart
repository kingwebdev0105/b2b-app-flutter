// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/widgets/buttons/decorated_icon_button.dart';

class ProfileFragment extends StatelessWidget {
  final String _image;
  final String _userName;
  final String _email;

  ProfileFragment({
    @required final String image,
    @required final String userName,
    @required final String email,
  })  : this._image = image,
        this._userName = userName,
        this._email = email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedIconButton(
          iconSource: _image,
          size: 80.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            _userName,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Text(
          _email,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
