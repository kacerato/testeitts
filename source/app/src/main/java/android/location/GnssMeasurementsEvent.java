package android.location;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/GnssMeasurementsEvent.class
 */
public final class GnssMeasurementsEvent implements Parcelable {
    public static final Parcelable.Creator<GnssMeasurementsEvent> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/GnssMeasurementsEvent$Callback.class
 */
    public static abstract class Callback {
        public static final int STATUS_LOCATION_DISABLED = 2;
        public static final int STATUS_NOT_SUPPORTED = 0;
        public static final int STATUS_READY = 1;

        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onGnssMeasurementsReceived(GnssMeasurementsEvent eventArgs) {
            throw new RuntimeException("Stub!");
        }

        public void onStatusChanged(int status) {
            throw new RuntimeException("Stub!");
        }
    }

    GnssMeasurementsEvent() {
        throw new RuntimeException("Stub!");
    }

    public GnssClock getClock() {
        throw new RuntimeException("Stub!");
    }

    public Collection<GnssMeasurement> getMeasurements() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
