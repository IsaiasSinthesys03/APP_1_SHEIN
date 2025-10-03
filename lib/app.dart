// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'backdrop.dart'; // New code
import 'category_menu_page.dart';
import 'colors.dart';
import 'home.dart';
import 'login.dart';
import 'model/product.dart'; // New code
import 'supplemental/cut_corners_border.dart';

// TODO: Build a Shrine Theme (103)


ThemeData _buildAppDarkTheme() {
  final Color accent = AppColors.accentPurple;
  final Color surface = AppColors.surface;
  final Color background = AppColors.background;
  final Color primaryDark = AppColors.primaryDark;
  return ThemeData.dark().copyWith(
    useMaterial3: false,
    primaryColor: accent,
    scaffoldBackgroundColor: background,
    cardColor: surface,
    canvasColor: surface,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryDark,
      foregroundColor: AppColors.textPrimary,
      elevation: 0.5,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      bodyColor: AppColors.textPrimary,
      displayColor: AppColors.textPrimary,
    ),
    colorScheme: ColorScheme.dark(
      primary: accent,
      onPrimary: Colors.white,
      secondary: accent,
      onSecondary: Colors.white,
      surface: surface,
      onSurface: AppColors.textPrimary,
      background: background,
      onBackground: AppColors.textPrimary,
      error: AppColors.error,
      onError: Colors.white,
    ),
    dividerColor: AppColors.divider,
    inputDecorationTheme: InputDecorationTheme(
      border: const CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: accent,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: accent,
      ),
      labelStyle: TextStyle(color: AppColors.textSecondary),
      hintStyle: TextStyle(color: AppColors.textDisabled),
    ),
    iconTheme: const IconThemeData(color: Colors.white70),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: accent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: accent,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: accent,
        side: BorderSide(color: accent),
      ),
    ),
  );
}

// TODO: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  Category _currentCategory = Category.all;

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        // TODO: Change to a Backdrop with a HomePage frontLayer (104)
        '/': (BuildContext context) => Backdrop(
              // TODO: Make currentCategory field take _currentCategory (104)
              currentCategory: _currentCategory,
              // TODO: Pass _currentCategory for frontLayer (104)
              frontLayer: HomePage(),
              // TODO: Change backLayer field value to CategoryMenuPage (104)
              backLayer: CategoryMenuPage(
                currentCategory: _currentCategory,
                onCategoryTap: _onCategoryTap,
              ),
              frontTitle: const Text('SHRINE'),
              backTitle: const Text('MENU'),
            ),
        // TODO: Make currentCategory field take _currentCategory (104)
        // TODO: Pass _currentCategory for frontLayer (104)
        // TODO: Change backLayer field value to CategoryMenuPage (104)
      },
      // TODO: Add a theme (103)
  theme: _buildAppDarkTheme(), // Nuevo tema oscuro
    );
  }
}
