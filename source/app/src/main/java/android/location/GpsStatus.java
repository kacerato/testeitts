package android.location;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/GpsStatus.class
 */
@Deprecated
public final class GpsStatus {
    public static final int GPS_EVENT_FIRST_FIX = 3;
    public static final int GPS_EVENT_SATELLITE_STATUS = 4;
    public static final int GPS_EVENT_STARTED = 1;
    public static final int GPS_EVENT_STOPPED = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/GpsStatus$Listener.class
 */
    @Deprecated
    public interface Listener {
        void onGpsStatusChanged(int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/GpsStatus$NmeaListener.class
 */
    @Deprecated
    public interface NmeaListener {
        void onNmeaReceived(long j10, String str);
    }

    GpsStatus() {
        throw new RuntimeException("Stub!");
    }

    public int getTimeToFirstFix() {
        throw new RuntimeException("Stub!");
    }

    public Iterable<GpsSatellite> getSatellites() {
        throw new RuntimeException("Stub!");
    }

    public int getMaxSatellites() {
        throw new RuntimeException("Stub!");
    }
}
