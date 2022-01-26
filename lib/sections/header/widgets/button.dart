import 'package:flutter/material.dart';
import 'package:web_portfolio/config/theme.dart';

class IconHeader extends StatelessWidget {
  const IconHeader(
      {Key? key,
      required this.title,
      required this.icon,
      required this.voidCallback})
      : super(key: key);

  final String title;
  final Icon icon;
  final VoidCallback voidCallback;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        elevation: 20.0,
        primary: AppTheme.textPrimaryColordark,
        backgroundColor: AppTheme.buttonBackgroundColor,
        padding: const EdgeInsets.all(13),
      ),
      onPressed: voidCallback,
      icon: icon,
      label: Text(title,
          style: const TextStyle(color: AppTheme.textPrimaryColorWhite)),
    );
  }
}
