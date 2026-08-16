package androidx.core.location;

import android.location.Location;
import kotlin.jvm.internal.M;

public final class LocationKt {
    public static final double component1(Location location) {
        M.p(location, "<this>");
        return location.getLatitude();
    }

    public static final double component2(Location location) {
        M.p(location, "<this>");
        return location.getLongitude();
    }
}
