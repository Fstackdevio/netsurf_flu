import 'package:flutter/material.dart';
import 'package:netsurf/pages/buy_data.dart';
import 'package:netsurf/pages/data_balance.dart';

BuildContext context = context;
List list = [
  {
    "id": "balance",
    "name": "Data Balance",
    "icon": Icons.assessment,
    onTap(): () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => DataBalance()
        )
      );
    }
  },
  {
    "id": "buy_data",
    "name": "Buy Data",
    "icon": Icons.add_shopping_cart,
    onTap(): () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => BuyData()
        )
      );
    }
  },
  {
    "id": "share",
    "name": "Share Data",
    "icon": Icons.favorite_border
  },
  {
    "id": "change",
    "name": "Change Password",
    "icon": Icons.lock
  },
  {
    "id": "request",
    "name": "Request Data",
    "icon": Icons.play_for_work
  },
  {
    "id": "login_hstry",
    "name": "Login History",
    "icon": Icons.vpn_lock
  },
  {
    "id": "share_hstry",
    "name": "Share History",
    "icon": Icons.loyalty
  }
];

onTap() => onTap;