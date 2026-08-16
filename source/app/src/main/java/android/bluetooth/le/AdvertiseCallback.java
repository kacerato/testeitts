package android.bluetooth.le;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/le/AdvertiseCallback.class
 */
public abstract class AdvertiseCallback {
    public static final int ADVERTISE_FAILED_ALREADY_STARTED = 3;
    public static final int ADVERTISE_FAILED_DATA_TOO_LARGE = 1;
    public static final int ADVERTISE_FAILED_FEATURE_UNSUPPORTED = 5;
    public static final int ADVERTISE_FAILED_INTERNAL_ERROR = 4;
    public static final int ADVERTISE_FAILED_TOO_MANY_ADVERTISERS = 2;

    public AdvertiseCallback() {
        throw new RuntimeException("Stub!");
    }

    public void onStartSuccess(AdvertiseSettings settingsInEffect) {
        throw new RuntimeException("Stub!");
    }

    public void onStartFailure(int errorCode) {
        throw new RuntimeException("Stub!");
    }
}
