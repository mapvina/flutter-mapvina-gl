part of '../mapvina_gl.dart';

/// MapVina styles used mostly for demonstration.
abstract class MapVinaStyles {
  /// A very simple MapVina demo style that shows only countries with their
  /// boundaries.
  static const String demo = 'https://maps.mapvina.com/styles/v1/streets.json?key=public_key';

  /// The OpenFreeMap liberty style
  static const String openfreemapLiberty =
      'https://tiles.openfreemap.org/styles/liberty';
}
