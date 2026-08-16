package androidx.core.location;

import android.location.GnssStatus;
import android.os.Build;
import androidx.core.util.Preconditions;

public class GnssStatusWrapper extends GnssStatusCompat {
    private final GnssStatus mWrapped;

    public static class Api26Impl {
        private Api26Impl() {
        }

        public static float getCarrierFrequencyHz(GnssStatus gnssStatus, int i10) {
            return gnssStatus.getCarrierFrequencyHz(i10);
        }

        public static boolean hasCarrierFrequencyHz(GnssStatus gnssStatus, int i10) {
            return gnssStatus.hasCarrierFrequencyHz(i10);
        }
    }

    public static class Api30Impl {
        private Api30Impl() {
        }

        public static float getBasebandCn0DbHz(GnssStatus gnssStatus, int i10) {
            return gnssStatus.getBasebandCn0DbHz(i10);
        }

        public static boolean hasBasebandCn0DbHz(GnssStatus gnssStatus, int i10) {
            return gnssStatus.hasBasebandCn0DbHz(i10);
        }
    }

    public GnssStatusWrapper(Object obj) {
        this.mWrapped = (GnssStatus) Preconditions.checkNotNull((GnssStatus) obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GnssStatusWrapper) {
            return this.mWrapped.equals(((GnssStatusWrapper) obj).mWrapped);
        }
        return false;
    }

    @Override
    public float getAzimuthDegrees(int i10) {
        return this.mWrapped.getAzimuthDegrees(i10);
    }

    @Override
    public float getBasebandCn0DbHz(int i10) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getBasebandCn0DbHz(this.mWrapped, i10);
        }
        throw new UnsupportedOperationException();
    }

    @Override
    public float getCarrierFrequencyHz(int i10) {
        return Api26Impl.getCarrierFrequencyHz(this.mWrapped, i10);
    }

    @Override
    public float getCn0DbHz(int i10) {
        return this.mWrapped.getCn0DbHz(i10);
    }

    @Override
    public int getConstellationType(int i10) {
        return this.mWrapped.getConstellationType(i10);
    }

    @Override
    public float getElevationDegrees(int i10) {
        return this.mWrapped.getElevationDegrees(i10);
    }

    @Override
    public int getSatelliteCount() {
        return this.mWrapped.getSatelliteCount();
    }

    @Override
    public int getSvid(int i10) {
        return this.mWrapped.getSvid(i10);
    }

    @Override
    public boolean hasAlmanacData(int i10) {
        return this.mWrapped.hasAlmanacData(i10);
    }

    @Override
    public boolean hasBasebandCn0DbHz(int i10) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.hasBasebandCn0DbHz(this.mWrapped, i10);
        }
        return false;
    }

    @Override
    public boolean hasCarrierFrequencyHz(int i10) {
        return Api26Impl.hasCarrierFrequencyHz(this.mWrapped, i10);
    }

    @Override
    public boolean hasEphemerisData(int i10) {
        return this.mWrapped.hasEphemerisData(i10);
    }

    public int hashCode() {
        return this.mWrapped.hashCode();
    }

    @Override
    public boolean usedInFix(int i10) {
        return this.mWrapped.usedInFix(i10);
    }
}
