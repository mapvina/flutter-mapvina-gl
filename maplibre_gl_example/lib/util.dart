import 'package:flutter/services.dart';
import 'package:mapvina_gl/mapvina_gl.dart';

/// Adds an asset image to the currently displayed style
Future<void> addImageFromAsset(
  MapVinaMapController controller,
  String name,
  String assetName,
) async {
  final bytes = await rootBundle.load(assetName);
  final list = bytes.buffer.asUint8List();
  return controller.addImage(name, list);
}
