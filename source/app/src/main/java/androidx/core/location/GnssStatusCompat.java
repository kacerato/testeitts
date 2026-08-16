package androidx.core.location;

import android.location.GnssStatus;
import android.location.GpsStatus;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public abstract class GnssStatusCompat {
    public static final int CONSTELLATION_BEIDOU = 5;
    public static final int CONSTELLATION_GALILEO = 6;
    public static final int CONSTELLATION_GLONASS = 3;
    public static final int CONSTELLATION_GPS = 1;
    public static final int CONSTELLATION_IRNSS = 7;
    public static final int CONSTELLATION_QZSS = 4;
    public static final int CONSTELLATION_SBAS = 2;
    public static final int CONSTELLATION_UNKNOWN = 0;

    public static abstract class Callback {
        public void onFirstFix(int i10) {
        }

        public void onSatelliteStatusChanged(GnssStatusCompat gnssStatusCompat) {
        }

        public void onStarted() {
        }

        public void onStopped() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConstellationType {
    }

    public static GnssStatusCompat wrap(GnssStatus gnssStatus) {
        return new GnssStatusWrapper(gnssStatus);
    }

    public abstract float getAzimuthDegrees(int i10);

    public abstract float getBasebandCn0DbHz(int i10);

    public abstract float getCarrierFrequencyHz(int i10);

    public abstract float getCn0DbHz(int i10);

    public abstract int getConstellationType(int i10);

    public abstract float getElevationDegrees(int i10);

    public abstract int getSatelliteCount();

    public abstract int getSvid(int i10);

    public abstract boolean hasAlmanacData(int i10);

    public abstract boolean hasBasebandCn0DbHz(int i10);

    public abstract boolean hasCarrierFrequencyHz(int i10);

    public abstract boolean hasEphemerisData(int i10);

    public abstract boolean usedInFix(int i10);

    public static GnssStatusCompat wrap(GpsStatus gpsStatus) {
        return new GpsStatusWrapper(gpsStatus);
    }
}
