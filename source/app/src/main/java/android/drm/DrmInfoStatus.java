package android.drm;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/drm/DrmInfoStatus.class
 */
public class DrmInfoStatus {
    public static final int STATUS_ERROR = 2;
    public static final int STATUS_OK = 1;
    public final ProcessedData data;
    public final int infoType;
    public final String mimeType;
    public final int statusCode;

    public DrmInfoStatus(int statusCode, int infoType, ProcessedData data, String mimeType) {
        throw new RuntimeException("Stub!");
    }
}
