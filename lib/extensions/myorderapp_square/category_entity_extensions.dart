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

import 'package:myorderapp_square/myorderapp_square.dart';

import "../dart/optional_bool_extensions.dart";
import 'item_entity_extensions.dart';

extension CategoryEntityExtensions on CategoryEntity {
  bool get isMoaEnabled => moaEnabled ?? false;

  CategoryEntity get whereMoaEnabled => CategoryEntity(
        id: id,
        moaOrdinal: moaOrdinal,
        moaEnabled: moaEnabled,
        name: name,
        items: items
            ?.where(
              (item) =>
                  item.moaEnabled.orFalse && item.enabledVariations.isNotEmpty,
            )
            .toList(),
      );
}
