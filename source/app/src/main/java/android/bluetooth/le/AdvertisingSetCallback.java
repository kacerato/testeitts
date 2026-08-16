package android.bluetooth.le;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/le/AdvertisingSetCallback.class
 */
public abstract class AdvertisingSetCallback {
    public static final int ADVERTISE_FAILED_ALREADY_STARTED = 3;
    public static final int ADVERTISE_FAILED_DATA_TOO_LARGE = 1;
    public static final int ADVERTISE_FAILED_FEATURE_UNSUPPORTED = 5;
    public static final int ADVERTISE_FAILED_INTERNAL_ERROR = 4;
    public static final int ADVERTISE_FAILED_TOO_MANY_ADVERTISERS = 2;
    public static final int ADVERTISE_SUCCESS = 0;

    public AdvertisingSetCallback() {
        throw new RuntimeException("Stub!");
    }

    public void onAdvertisingSetStarted(AdvertisingSet advertisingSet, int txPower, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onAdvertisingSetStopped(AdvertisingSet advertisingSet) {
        throw new RuntimeException("Stub!");
    }

    public void onAdvertisingEnabled(AdvertisingSet advertisingSet, boolean enable, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onAdvertisingDataSet(AdvertisingSet advertisingSet, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onScanResponseDataSet(AdvertisingSet advertisingSet, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onAdvertisingParametersUpdated(AdvertisingSet advertisingSet, int txPower, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onPeriodicAdvertisingParametersUpdated(AdvertisingSet advertisingSet, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onPeriodicAdvertisingDataSet(AdvertisingSet advertisingSet, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onPeriodicAdvertisingEnabled(AdvertisingSet advertisingSet, boolean enable, int status) {
        throw new RuntimeException("Stub!");
    }
}
