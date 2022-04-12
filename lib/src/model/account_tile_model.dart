import 'package:flutter/material.dart';

class AccTileModel {
  int? id;
  final String title;
  final IconData icon;

  AccTileModel( {
    required this.title,
    required this.icon,
    int? id,
  });
}

final List<AccTileModel> dataList = [
  AccTileModel(
    title: 'My Account',
    icon: Icons.person,
    
  ),
  AccTileModel(
    title: 'Dashboard',
    icon: Icons.dashboard_rounded,
  ),
  AccTileModel(
    title: 'Help & Support',
    icon: Icons.headset_mic,
  ),
  AccTileModel(
    title: 'About',
    icon: Icons.info_rounded,
  ),
  AccTileModel(
    title: 'Logout',
    icon: Icons.logout,
  ),
];
