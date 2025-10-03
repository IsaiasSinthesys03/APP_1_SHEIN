# Shrine - Aplicación de E-commerce Flutter

**Una aplicación de tienda online moderna con diseño oscuro y carrusel de productos**

## 📜 Descripción General

Shrine es una aplicación móvil de e-commerce desarrollada en Flutter que simula una tienda online de productos de moda y hogar. La aplicación presenta un diseño moderno con tema oscuro, navegación por categorías y un carrusel interactivo para mostrar productos. Está dirigida a usuarios que buscan una experiencia de compra fluida y visualmente atractiva.

La aplicación incluye funcionalidades como autenticación de usuario, navegación por categorías de productos (accesorios, ropa, hogar), visualización de productos en carrusel con auto-reproducción, y una interfaz de usuario optimizada para dispositivos móviles.

## ✨ Características Principales

* **Sistema de Autenticación:** Página de login con campos de usuario y contraseña
* **Navegación por Categorías:** Filtrado de productos por categorías (All, Accessories, Clothing, Home)
* **Carrusel Interactivo:** Visualización de productos en carrusel con auto-reproducción y controles de navegación
* **Diseño Moderno:** Tema oscuro con paleta de colores morada y gris
* **Animaciones Fluidas:** Transiciones suaves entre vistas y animaciones de backdrop
* **Gestión de Estado:** Manejo de estado para categorías y navegación
* **Responsive Design:** Adaptable a diferentes tamaños de pantalla
* **Componentes Reutilizables:** Tarjetas de productos y elementos UI modulares

## 🛠️ Tecnologías Utilizadas

* **Frontend:**
  * Flutter SDK (^3.8.1)
  * Dart
  * Material Design 3
  * Carousel Slider (^5.1.1)
  * Internationalization (intl ^0.20.2)

* **UI/UX:**
  * Material Design Components
  * Custom Cut Corners Border
  * Dark Theme Implementation
  * Custom Color Palette

* **Assets:**
  * Shrine Images Package (^2.0.2)
  * Custom Icons and Images
  * Multi-resolution Assets (2.0x, 3.0x)

* **Herramientas de Desarrollo:**
  * Flutter Lints (^6.0.0)
  * Git
  * Android Studio / VS Code
  * Flutter CLI

## 🚀 Cómo Empezar

### **Prerrequisitos**

Antes de comenzar, asegúrate de tener instalado:

* [Flutter SDK](https://flutter.dev/docs/get-started/install) (versión 3.8.1 o superior)
* [Dart SDK](https://dart.dev/get-dart) (incluido con Flutter)
* [Git](https://git-scm.com/)
* Un editor de código como [Visual Studio Code](https://code.visualstudio.com/) o [Android Studio](https://developer.android.com/studio)
* [Android Studio](https://developer.android.com/studio) (para desarrollo Android)
* [Xcode](https://developer.apple.com/xcode/) (para desarrollo iOS, solo en macOS)

### **Instalación**

1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/tu-usuario/flutter_application_1.git
   ```

2. **Navega al directorio del proyecto:**
   ```bash
   cd flutter_application_1
   ```

3. **Instala las dependencias:**
   ```bash
   flutter pub get
   ```

4. **Verifica la instalación de Flutter:**
   ```bash
   flutter doctor
   ```

### **Ejecución**

* **Para ejecutar en modo de desarrollo:**
  ```bash
  flutter run
  ```

* **Para ejecutar en un dispositivo específico:**
  ```bash
  flutter run -d <device-id>
  ```

* **Para ejecutar en modo release:**
  ```bash
  flutter run --release
  ```

* **Para construir APK de Android:**
  ```bash
  flutter build apk
  ```

* **Para construir IPA de iOS:**
  ```bash
  flutter build ios
  ```

Una vez ejecutado, la aplicación se abrirá en tu dispositivo o emulador. La aplicación comenzará en la página de login (`/login`) y después de autenticarse, navegará a la página principal con el carrusel de productos.

## 📂 Estructura del Proyecto

```
lib/
├── main.dart                    # Punto de entrada de la aplicación
├── app.dart                     # Configuración principal de la app y tema oscuro
├── home.dart                    # Página principal con carrusel de productos
├── login.dart                   # Página de autenticación
├── backdrop.dart                # Componente de navegación con animaciones
├── category_menu_page.dart      # Menú de categorías de productos
├── colors.dart                  # Paleta de colores personalizada
├── model/                       # Modelos de datos
│   ├── product.dart            # Modelo de producto y categorías
│   └── products_repository.dart # Repositorio de datos de productos
└── supplemental/               # Componentes UI auxiliares
    ├── product_card.dart       # Tarjeta de producto reutilizable
    ├── cut_corners_border.dart # Borde personalizado con esquinas cortadas
    ├── asymmetric_view.dart    # Vista asimétrica de productos
    └── product_columns.dart    # Columnas de productos

assets/                         # Recursos de la aplicación
├── diamond.png                 # Logo de la aplicación
├── slanted_menu.png           # Icono de menú
└── 2.0x/                      # Assets de alta resolución
    └── 3.0x/

android/                       # Configuración específica de Android
ios/                          # Configuración específica de iOS
web/                          # Configuración para web
windows/                      # Configuración para Windows
macos/                        # Configuración para macOS
linux/                        # Configuración para Linux
```

### **Archivos Clave:**

- **`main.dart`**: Punto de entrada que inicializa la aplicación ShrineApp
- **`app.dart`**: Configuración del tema oscuro, rutas de navegación y estado global
- **`home.dart`**: Implementa el carrusel de productos con auto-reproducción
- **`login.dart`**: Página de autenticación con campos de usuario y contraseña
- **`model/product.dart`**: Define el modelo Product y enum Category
- **`model/products_repository.dart`**: Contiene los datos mock de productos
- **`colors.dart`**: Define la paleta de colores del tema oscuro

### **Características del Diseño:**

- **Tema Oscuro**: Implementación completa con colores personalizados
- **Navegación**: Sistema de rutas con `/login` y `/` (home)
- **Estado**: Gestión de categorías seleccionadas
- **Animaciones**: Transiciones suaves en el backdrop
- **Responsive**: Adaptable a diferentes tamaños de pantalla

## 📝 Contribuciones

Este proyecto está abierto a contribuciones. Si deseas contribuir:

1. Fork el repositorio
2. Crea una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -m 'Agrega nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

### **Áreas de Mejora Sugeridas:**

- Implementar funcionalidad de carrito de compras
- Agregar búsqueda de productos
- Implementar autenticación real con backend
- Agregar favoritos/wishlist
- Mejorar la gestión de estado con Provider/Riverpod
- Agregar tests unitarios y de integración
- Implementar persistencia de datos local

---

**Desarrollado con ❤️ usando Flutter**