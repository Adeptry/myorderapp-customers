/*
    This code is part of the myorderapp-customers front-end.
    Copyright (C) 2024  Adeptry, LLC

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/modal_bottom_sheet_page.dart';
import '../../../widgets/scaffolds/current_order_payment_scaffold.dart';
import '../../root_route_data.dart';

@immutable
class CurrentOrderPaymentRouteData extends GoRouteData {
  static const String path = 'pay';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  final String merchantIdOrPath;

  const CurrentOrderPaymentRouteData({required this.merchantIdOrPath});

  @override
  Page buildPage(BuildContext context, GoRouterState state) {
    return ModalBottomSheetPage(
      isScrollControlled: true,
      builder: (context) {
        return const CurrentOrderPaymentScaffold();
      },
    );
  }
}
