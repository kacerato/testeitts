package android.location;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/GnssStatus.class
 */
public final class GnssStatus {
    public static final int CONSTELLATION_BEIDOU = 5;
    public static final int CONSTELLATION_GALILEO = 6;
    public static final int CONSTELLATION_GLONASS = 3;
    public static final int CONSTELLATION_GPS = 1;
    public static final int CONSTELLATION_QZSS = 4;
    public static final int CONSTELLATION_SBAS = 2;
    public static final int CONSTELLATION_UNKNOWN = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/GnssStatus$Callback.class
 */
    public static abstract class Callback {
        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onStarted() {
            throw new RuntimeException("Stub!");
        }

        public void onStopped() {
            throw new RuntimeException("Stub!");
        }

        public void onFirstFix(int ttffMillis) {
            throw new RuntimeException("Stub!");
        }

        public void onSatelliteStatusChanged(GnssStatus status) {
            throw new RuntimeException("Stub!");
        }
    }

    GnssStatus() {
        throw new RuntimeException("Stub!");
    }

    public int getSatelliteCount() {
        throw new RuntimeException("Stub!");
    }

    public int getConstellationType(int satIndex) {
        throw new RuntimeException("Stub!");
    }

    public int getSvid(int satIndex) {
        throw new RuntimeException("Stub!");
    }

    public float getCn0DbHz(int satIndex) {
        throw new RuntimeException("Stub!");
    }

    public float getElevationDegrees(int satIndex) {
        throw new RuntimeException("Stub!");
    }

    public float getAzimuthDegrees(int satIndex) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasEphemerisData(int satIndex) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasAlmanacData(int satIndex) {
        throw new RuntimeException("Stub!");
    }

    public boolean usedInFix(int satIndex) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasCarrierFrequencyHz(int satIndex) {
        throw new RuntimeException("Stub!");
    }

    public float getCarrierFrequencyHz(int satIndex) {
        throw new RuntimeException("Stub!");
    }
}
