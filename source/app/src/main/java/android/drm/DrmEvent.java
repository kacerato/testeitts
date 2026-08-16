package android.drm;

import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/drm/DrmEvent.class
 */
public class DrmEvent {
    public static final String DRM_INFO_OBJECT = "drm_info_object";
    public static final String DRM_INFO_STATUS_OBJECT = "drm_info_status_object";
    public static final int TYPE_ALL_RIGHTS_REMOVED = 1001;
    public static final int TYPE_DRM_INFO_PROCESSED = 1002;

    protected DrmEvent(int uniqueId, int type, String message, HashMap<String, Object> attributes) {
        throw new RuntimeException("Stub!");
    }

    public DrmEvent(int uniqueId, int type, String message) {
        throw new RuntimeException("Stub!");
    }

    public int getUniqueId() {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public String getMessage() {
        throw new RuntimeException("Stub!");
    }

    public Object getAttribute(String key) {
        throw new RuntimeException("Stub!");
    }
}
