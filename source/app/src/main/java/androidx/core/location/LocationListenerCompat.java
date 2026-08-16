package androidx.core.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import java.util.List;

public interface LocationListenerCompat extends LocationListener {
    default void onFlushComplete(int i10) {
    }

    default void onLocationChanged(List<Location> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            onLocationChanged(list.get(i10));
        }
    }

    @Override
    default void onProviderDisabled(String str) {
    }

    @Override
    default void onProviderEnabled(String str) {
    }

    @Override
    default void onStatusChanged(String str, int i10, Bundle bundle) {
    }
}
