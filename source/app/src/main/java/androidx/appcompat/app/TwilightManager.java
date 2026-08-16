package androidx.appcompat.app;

import android.Manifest;
import android.app.AlarmManager;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import java.util.Calendar;

class TwilightManager {
    private static final int SUNRISE = 6;
    private static final int SUNSET = 22;
    private static final String TAG = "TwilightManager";
    private static TwilightManager sInstance;
    private final Context mContext;
    private final LocationManager mLocationManager;
    private final TwilightState mTwilightState = new TwilightState();

    public static class TwilightState {
        boolean isNight;
        long nextUpdate;
    }

    public TwilightManager(Context context, LocationManager locationManager) {
        this.mContext = context;
        this.mLocationManager = locationManager;
    }

    public static TwilightManager getInstance(Context context) {
        if (sInstance == null) {
            Context applicationContext = context.getApplicationContext();
            sInstance = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return sInstance;
    }

    private Location getLastKnownLocation() {
        Location lastKnownLocationForProvider = PermissionChecker.checkSelfPermission(this.mContext, Manifest.permission.ACCESS_COARSE_LOCATION) == 0 ? getLastKnownLocationForProvider(LocationManager.NETWORK_PROVIDER) : null;
        Location lastKnownLocationForProvider2 = PermissionChecker.checkSelfPermission(this.mContext, Manifest.permission.ACCESS_FINE_LOCATION) == 0 ? getLastKnownLocationForProvider(LocationManager.GPS_PROVIDER) : null;
        return (lastKnownLocationForProvider2 == null || lastKnownLocationForProvider == null) ? lastKnownLocationForProvider2 != null ? lastKnownLocationForProvider2 : lastKnownLocationForProvider : lastKnownLocationForProvider2.getTime() > lastKnownLocationForProvider.getTime() ? lastKnownLocationForProvider2 : lastKnownLocationForProvider;
    }

    private Location getLastKnownLocationForProvider(String str) {
        try {
            if (this.mLocationManager.isProviderEnabled(str)) {
                return this.mLocationManager.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e10) {
            Log.d(TAG, "Failed to get last known location", e10);
            return null;
        }
    }

    private boolean isStateValid() {
        return this.mTwilightState.nextUpdate > System.currentTimeMillis();
    }

    public static void setInstance(TwilightManager twilightManager) {
        sInstance = twilightManager;
    }

    private void updateState(Location location) {
        long j10;
        TwilightState twilightState = this.mTwilightState;
        long currentTimeMillis = System.currentTimeMillis();
        TwilightCalculator twilightCalculator = TwilightCalculator.getInstance();
        twilightCalculator.calculateTwilight(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        twilightCalculator.calculateTwilight(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z10 = twilightCalculator.state == 1;
        long j11 = twilightCalculator.sunrise;
        long j12 = twilightCalculator.sunset;
        twilightCalculator.calculateTwilight(currentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
        long j13 = twilightCalculator.sunrise;
        if (j11 == -1 || j12 == -1) {
            j10 = currentTimeMillis + AlarmManager.INTERVAL_HALF_DAY;
        } else {
            if (currentTimeMillis <= j12) {
                j13 = currentTimeMillis > j11 ? j12 : j11;
            }
            j10 = j13 + 60000;
        }
        twilightState.isNight = z10;
        twilightState.nextUpdate = j10;
    }

    public boolean isNight() {
        TwilightState twilightState = this.mTwilightState;
        if (isStateValid()) {
            return twilightState.isNight;
        }
        Location lastKnownLocation = getLastKnownLocation();
        if (lastKnownLocation != null) {
            updateState(lastKnownLocation);
            return twilightState.isNight;
        }
        Log.i(TAG, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i10 = Calendar.getInstance().get(11);
        return i10 < 6 || i10 >= 22;
    }
}
