import 'package:flutter/material.dart';

import 'package:inherited_widget/model/user_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = UserModel.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(user.imgAvatar),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                user.name,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                user.birthDate,
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
