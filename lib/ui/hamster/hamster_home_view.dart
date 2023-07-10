import 'package:flutter/material.dart';
import 'package:montreuil_shrew_mer/constant/asset_constant.dart';
import 'package:montreuil_shrew_mer/ui/component/cube_route_builder.dart';
import 'package:montreuil_shrew_mer/ui/hamster/shrew_home_view.dart';

class HamsterHomeView extends StatelessWidget {
  const HamsterHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => onTapMain(context),
        child: const Image(
          image: AssetImage(AssetConstant.hamsterHomeImage),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  void onTapMain(BuildContext context) =>
      Navigator.of(context).pushAndRemoveUntil(
        CubePageRoute(
          const HamsterHomeView(),
          const ShrewHomeView(),
          // duration: Duration(seconds: 2),
        ),
        (route) {
          return false;
        },
      );
}
