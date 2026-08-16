package android.drm;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/drm/DrmConvertedStatus.class
 */
public class DrmConvertedStatus {
    public static final int STATUS_ERROR = 3;
    public static final int STATUS_INPUTDATA_ERROR = 2;
    public static final int STATUS_OK = 1;
    public final byte[] convertedData = null;
    public final int offset;
    public final int statusCode;

    public DrmConvertedStatus(int statusCode, byte[] convertedData, int offset) {
        throw new RuntimeException("Stub!");
    }
}
