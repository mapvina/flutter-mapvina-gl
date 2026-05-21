package com.mapvina.mapvinagl

import android.content.Context
import com.google.android.gms.common.ConnectionResult
import com.google.android.gms.common.GoogleApiAvailability
import com.mapvina.android.location.LocationComponent
import com.mapvina.android.location.engine.LocationEngine
import com.mapvina.android.location.engine.LocationEngineDefault.getDefaultLocationEngine
import com.mapvina.android.location.engine.LocationEngineProxy
import com.mapvina.android.location.engine.LocationEngineRequest

class LocationEngineFactory {

    private var locationEngineRequest: LocationEngineRequest? = null

    private fun isGooglePlayServicesAvailable(context: Context): Boolean {
        return try {
            val availability = GoogleApiAvailability.getInstance()
            availability.isGooglePlayServicesAvailable(context) == ConnectionResult.SUCCESS
        } catch (e: Exception) {
            // GMS classes not available (e.g., HMS-only device)
            false
        }
    }

    fun getLocationEngine(context: Context): LocationEngine {
        if (locationEngineRequest?.priority == LocationEngineRequest.PRIORITY_HIGH_ACCURACY) {
            val locationEngineImpl = if (isGooglePlayServicesAvailable(context)) {
                GMSLocationEngine(context)
            } else {
                MapVinaGPSLocationEngine(context)
            }
            return LocationEngineProxy(locationEngineImpl)
        }
        return getDefaultLocationEngine(context)
    }

    fun initLocationComponent(
        context: Context,
        locationComponent: LocationComponent?,
        locationEngineRequest: LocationEngineRequest?
    ) {
        if (locationEngineRequest != null) {
            this.locationEngineRequest = locationEngineRequest
        }
        if (locationComponent != null) {
            locationComponent.locationEngine = getLocationEngine(context)
            locationEngineRequest?.let { locationEngineRequest ->
                locationComponent.locationEngineRequest = locationEngineRequest
            }
        }
    }
}
