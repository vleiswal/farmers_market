import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

abstract class AppSliverScaffold {
  static CupertinoPageScaffold cupertinoSliverScaffold(
      {BuildContext context, String navTitle, Widget pageBody}) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            AppNavbar.cupertinoNavBar(title: navTitle, context: context),
          ];
        },
        body: pageBody,
      ),
    );
  }

  static Scaffold materialSliverScaffold(
      {BuildContext context, String navTitle, Widget pageBody}) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
          return <Widget>[
            AppNavbar.materialNavBar(
              title: navTitle,
              pinned: false,
            )
          ];
        },
        body: pageBody,
      ),
    );
  }
}
