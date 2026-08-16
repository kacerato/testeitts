package android.location;

import android.os.Bundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/LocationListener.class
 */
public interface LocationListener {
    void onLocationChanged(Location location);

    void onStatusChanged(String str, int i10, Bundle bundle);

    void onProviderEnabled(String str);

    void onProviderDisabled(String str);
}
