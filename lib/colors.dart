import 'package:flutter/material.dart';

/// Paleta de colores para el tema oscuro moderno con acento morado
class AppColors {
	// Primario oscuro (gris muy oscuro, casi negro)
	static const Color primaryDark = Color(0xFF121212);
	// Secundario/acento (morado profundo)
	static const Color accentPurple = Color(0xFF512DA8); // deepPurple[700]
	static const Color accentIndigo = Color(0xFF1A237E); // indigo[900]
	// Fondo principal
	static const Color background = Color(0xFF18191A); // Un poco más claro que el primario
	// Color de superficie (cards, sheets, etc.)
	static const Color surface = Color(0xFF232323); // gris oscuro
	// Texto principal
	static const Color textPrimary = Colors.white;
	// Texto secundario
	static const Color textSecondary = Colors.white70;
	// Texto terciario/desactivado
	static const Color textDisabled = Colors.white54;
	// Separadores sutiles
	static const Color divider = Colors.white12;
	// Color de error
	static const Color error = Color(0xFFD32F2F); // red[700]
}