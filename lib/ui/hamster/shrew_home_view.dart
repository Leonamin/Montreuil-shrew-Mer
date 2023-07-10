import 'package:flutter/material.dart';
import 'package:montreuil_shrew_mer/constant/asset_constant.dart';
import 'package:montreuil_shrew_mer/ui/component/cube_route_builder.dart';
import 'package:montreuil_shrew_mer/ui/hamster/hamster_home_view.dart';

class ShrewHomeView extends StatelessWidget {
  const ShrewHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => onTapMain(context),
        child: const Image(
          image: AssetImage(AssetConstant.shrewHomeImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void onTapMain(BuildContext context) =>
      Navigator.of(context).pushAndRemoveUntil(
        CubePageRoute(
          const ShrewHomeView(),
          const HamsterHomeView(),
        ),
        (route) {
          return false;
        },
      );
}
