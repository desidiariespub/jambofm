/*
 *  screen.dart
 *
 *  Created by Ilia Chirkunov <xc@yar.net> on 17.11.2022.
 */

import 'package:flutter/material.dart';
import 'package:android_minimizer/android_minimizer.dart';
import 'package:single_radio/widgets/sidebar.dart';
import 'package:single_radio/widgets/expanded_scroll_view.dart';
import 'package:single_radio/widgets/bottom_banner.dart';
import 'package:single_radio/widgets/background_image.dart';
import 'package:single_radio/controllers/scaffold_controller.dart';

class Screen extends StatelessWidget {
  const Screen({
    super.key,
    required this.title,
    this.home = false,
    required this.child,
    this.padding,
    this.hideOverscrollIndicator = false,
    this.backgroundImage = false,
  });

  final String title;
  final bool home;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final bool hideOverscrollIndicator;
  final bool backgroundImage;

  @override
  Widget build(BuildContext context) {
    return AndroidMinimizer(
      minimize: home ? true : false,
      child: BackgroundImage(
        enable: backgroundImage,
        child: Scaffold(
          key: home ? ScaffoldController.scaffoldKey : null,
          appBar: AppBar(
            title: Text(title),
            backgroundColor: backgroundImage ? Colors.transparent : null,
            elevation: backgroundImage ? 0 : null,
          ),
          drawer: home ? Sidebar() : null,
          backgroundColor: backgroundImage ? Colors.transparent : null,
          body: ExpandedScrollView(
            hideOverscrollIndicator: hideOverscrollIndicator,
            child: BottomBanner(
              enabled: home,
              child: Padding(
                padding: padding ??
                    EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.08,
                    ),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
