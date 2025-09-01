import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons',
    subTitle: 'Many buttons in Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Cards',
    subTitle: 'A stylized container',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'General and controlled',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars and dialogs',
    subTitle: 'Indicators on screen',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated container',
    subTitle: 'Stateful widget animated',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'A series of controls of Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'Introduction to the application',
    subTitle: 'Small introductory tutorial',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),
  MenuItem(
    title: 'InfiniteScroll and Pull',
    subTitle: 'Infinite lists and pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
];
