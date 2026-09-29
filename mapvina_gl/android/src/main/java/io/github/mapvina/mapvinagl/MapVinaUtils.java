package io.github.mapvina.mapvinagl;

import android.content.Context;
import io.github.mapvina.android.MapVina;

abstract class MapVinaUtils {
  private static final String TAG = "MapVinaMapController";

  static MapVina getMapVina(Context context) {
    return MapVina.getInstance(context);
  }
}
