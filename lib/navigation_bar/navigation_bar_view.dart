import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/portfolio/portfolio_view.dart';
import 'package:provider/provider.dart';

class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      mobileView: NavigationMobileView(),
      desktopView: NavigationDesktopView(),
    );
  }
}

class NavigationDesktopView extends StatelessWidget {
  const NavigationDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
    return Container(
      height: 100,
      width: 1507,
      padding: kScreenPadding,
      child: Row(
        children: [
          Text(
            '<',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'Raghav Talwar',
            style: TextStyle(
                color: Colors.redAccent, fontSize: 30, fontFamily: 'Agustina'),
          ),
          Text(
            '/',
            style: TextStyle(fontSize: 40),
          ),
          Text(
            '>',
            style: TextStyle(fontSize: 30),
          ),
          Spacer(),
          for (var item in navigationItems)
            NavigationBarItem(
              onPressed: () {
                scrollController.animateTo(
                  item.position,
                  duration: Duration(milliseconds: 700),
                  curve: Curves.easeInOut,
                );
              },
              text: item.text,
            ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              AdaptiveTheme.of(context).toggleThemeMode();
            },
            icon: Icon(Icons.brightness_3, size: 25),
          ),
        ],
      ),
    );
  }
}

class NavigationMobileView extends StatelessWidget {
  const NavigationMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 20),
          Text(
            '<',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Raghav Talwar',
            style: TextStyle(
                color: Colors.redAccent, fontSize: 20, fontFamily: 'Agustina'),
          ),
          Text(
            '/',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '>',
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              AdaptiveTheme.of(context).toggleThemeMode();
            },
            icon: Icon(Icons.brightness_3, size: 25),
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        ],
      ),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    Key key,
    @required this.onPressed,
    @required this.text,
  }) : super(key: key);

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 650;
    return Container(
      padding: const EdgeInsets.only(left: 64),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: isSmall ? 17 : 24,
          ),
        ),
      ),
    );
  }
}
