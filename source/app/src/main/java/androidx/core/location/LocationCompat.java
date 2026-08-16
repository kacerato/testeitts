package androidx.core.location;

import android.location.Location;
import android.os.Bundle;
import androidx.core.util.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;

public final class LocationCompat {
    public static final String EXTRA_BEARING_ACCURACY = "bearingAccuracy";
    public static final String EXTRA_IS_MOCK = "mockLocation";
    public static final String EXTRA_MSL_ALTITUDE = "androidx.core.location.extra.MSL_ALTITUDE";
    public static final String EXTRA_MSL_ALTITUDE_ACCURACY = "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY";
    public static final String EXTRA_SPEED_ACCURACY = "speedAccuracy";
    public static final String EXTRA_VERTICAL_ACCURACY = "verticalAccuracy";
    private static Method sSetIsFromMockProviderMethod;

    public static class Api17Impl {
        private Api17Impl() {
        }

        public static long getElapsedRealtimeNanos(Location location) {
            return location.getElapsedRealtimeNanos();
        }
    }

    public static class Api18Impl {
        private Api18Impl() {
        }

        public static boolean isMock(Location location) {
            return location.isFromMockProvider();
        }
    }

    public static class Api26Impl {
        private Api26Impl() {
        }

        public static float getBearingAccuracyDegrees(Location location) {
            return location.getBearingAccuracyDegrees();
        }

        public static float getSpeedAccuracyMetersPerSecond(Location location) {
            return location.getSpeedAccuracyMetersPerSecond();
        }

        public static float getVerticalAccuracyMeters(Location location) {
            return location.getVerticalAccuracyMeters();
        }

        public static boolean hasBearingAccuracy(Location location) {
            return location.hasBearingAccuracy();
        }

        public static boolean hasSpeedAccuracy(Location location) {
            return location.hasSpeedAccuracy();
        }

        public static boolean hasVerticalAccuracy(Location location) {
            return location.hasVerticalAccuracy();
        }

        public static void setBearingAccuracyDegrees(Location location, float f10) {
            location.setBearingAccuracyDegrees(f10);
        }

        public static void setSpeedAccuracyMetersPerSecond(Location location, float f10) {
            location.setSpeedAccuracyMetersPerSecond(f10);
        }

        public static void setVerticalAccuracyMeters(Location location, float f10) {
            location.setVerticalAccuracyMeters(f10);
        }
    }

    private LocationCompat() {
    }

    private static boolean containsExtra(Location location, String str) {
        Bundle extras = location.getExtras();
        return extras != null && extras.containsKey(str);
    }

    public static float getBearingAccuracyDegrees(Location location) {
        return Api26Impl.getBearingAccuracyDegrees(location);
    }

    public static long getElapsedRealtimeMillis(Location location) {
        return TimeUnit.NANOSECONDS.toMillis(Api17Impl.getElapsedRealtimeNanos(location));
    }

    public static long getElapsedRealtimeNanos(Location location) {
        return Api17Impl.getElapsedRealtimeNanos(location);
    }

    public static float getMslAltitudeAccuracyMeters(Location location) {
        Preconditions.checkState(hasMslAltitudeAccuracy(location), "The Mean Sea Level altitude accuracy of the location is not set.");
        return getOrCreateExtras(location).getFloat(EXTRA_MSL_ALTITUDE_ACCURACY);
    }

    public static double getMslAltitudeMeters(Location location) {
        Preconditions.checkState(hasMslAltitude(location), "The Mean Sea Level altitude of the location is not set.");
        return getOrCreateExtras(location).getDouble(EXTRA_MSL_ALTITUDE);
    }

    private static Bundle getOrCreateExtras(Location location) {
        Bundle extras = location.getExtras();
        if (extras != null) {
            return extras;
        }
        location.setExtras(new Bundle());
        return location.getExtras();
    }

    private static Method getSetIsFromMockProviderMethod() throws NoSuchMethodException {
        if (sSetIsFromMockProviderMethod == null) {
            Method declaredMethod = Location.class.getDeclaredMethod("setIsFromMockProvider", Boolean.TYPE);
            sSetIsFromMockProviderMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return sSetIsFromMockProviderMethod;
    }

    public static float getSpeedAccuracyMetersPerSecond(Location location) {
        return Api26Impl.getSpeedAccuracyMetersPerSecond(location);
    }

    public static float getVerticalAccuracyMeters(Location location) {
        return Api26Impl.getVerticalAccuracyMeters(location);
    }

    public static boolean hasBearingAccuracy(Location location) {
        return Api26Impl.hasBearingAccuracy(location);
    }

    public static boolean hasMslAltitude(Location location) {
        return containsExtra(location, EXTRA_MSL_ALTITUDE);
    }

    public static boolean hasMslAltitudeAccuracy(Location location) {
        return containsExtra(location, EXTRA_MSL_ALTITUDE_ACCURACY);
    }

    public static boolean hasSpeedAccuracy(Location location) {
        return Api26Impl.hasSpeedAccuracy(location);
    }

    public static boolean hasVerticalAccuracy(Location location) {
        return Api26Impl.hasVerticalAccuracy(location);
    }

    public static boolean isMock(Location location) {
        return Api18Impl.isMock(location);
    }

    private static void removeExtra(Location location, String str) {
        Bundle extras = location.getExtras();
        if (extras != null) {
            extras.remove(str);
            if (extras.isEmpty()) {
                location.setExtras(null);
            }
        }
    }

    public static void removeMslAltitude(Location location) {
        removeExtra(location, EXTRA_MSL_ALTITUDE);
    }

    public static void removeMslAltitudeAccuracy(Location location) {
        removeExtra(location, EXTRA_MSL_ALTITUDE_ACCURACY);
    }

    public static void setBearingAccuracyDegrees(Location location, float f10) {
        Api26Impl.setBearingAccuracyDegrees(location, f10);
    }

    public static void setMock(Location location, boolean z10) {
        try {
            getSetIsFromMockProviderMethod().invoke(location, Boolean.valueOf(z10));
        } catch (IllegalAccessException e10) {
            IllegalAccessError illegalAccessError = new IllegalAccessError();
            illegalAccessError.initCause(e10);
            throw illegalAccessError;
        } catch (NoSuchMethodException e11) {
            NoSuchMethodError noSuchMethodError = new NoSuchMethodError();
            noSuchMethodError.initCause(e11);
            throw noSuchMethodError;
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(e12);
        }
    }

    public static void setMslAltitudeAccuracyMeters(Location location, float f10) {
        getOrCreateExtras(location).putFloat(EXTRA_MSL_ALTITUDE_ACCURACY, f10);
    }

    public static void setMslAltitudeMeters(Location location, double d10) {
        getOrCreateExtras(location).putDouble(EXTRA_MSL_ALTITUDE, d10);
    }

    public static void setSpeedAccuracyMetersPerSecond(Location location, float f10) {
        Api26Impl.setSpeedAccuracyMetersPerSecond(location, f10);
    }

    public static void setVerticalAccuracyMeters(Location location, float f10) {
        Api26Impl.setVerticalAccuracyMeters(location, f10);
    }
}
