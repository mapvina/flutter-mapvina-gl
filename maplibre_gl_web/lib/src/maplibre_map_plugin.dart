part of '../mapvina_gl_web.dart';

class MapVinaMapPlugin {
  /// Registers this class as the default instance of [MapVinaPlatform].
  static void registerWith(Registrar registrar) {
    MapVinaPlatform.createInstance = () => MapVinaMapController();
  }
}
