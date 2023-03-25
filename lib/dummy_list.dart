import 'package:flutter/material.dart';

List<Map<String, dynamic>> cards = [
  {
    'color': Color.fromRGBO(255, 147, 224, 1),
  },
  {
    'color': Color.fromRGBO(255, 251, 128, 1),
  },
  {
    'color': Color.fromRGBO(121, 255, 157, 1),
  },
];

List<Map<String, dynamic>> paymentOptions = [
  {
    'icon': Icons.sync_alt,
    'title': 'Transfer'
  },
  {'icon': Icons.vertical_align_top, 'title': 'Accept'},
  {'icon': Icons.currency_exchange, 'title': 'Exchange'},
  {'icon': Icons.dashboard_rounded, 'title': 'More'},
];

List<Map<String, dynamic>> people = [
  {'image': 'profile.png', 'name': 'John'},
  {'image': 'profile2.png', 'name': 'Mike'},
  {'image': 'profile1.png', 'name': 'Leya'},
  {'image': 'profile2.png', 'name': 'Cooper'},
  {'image': 'profile1.png', 'name': 'Jenny'},

];

List<Map<String, dynamic>> transactions = [
  {'name': 'Amazon Prime', 'date': '10, Jan 2023', 'price': 32.00, 'color': Color.fromRGBO(121, 255, 157, 1),
  },
  {
    'name': 'Netflix',
    'date': '09, Jan 2023',
    'price': 112.00,
    'color': Color.fromRGBO(255, 147, 224, 1),
  },
];
