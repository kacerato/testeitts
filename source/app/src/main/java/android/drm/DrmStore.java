package android.drm;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/drm/DrmStore.class
 */
public class DrmStore {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/drm/DrmStore$ConstraintsColumns.class
 */
    public interface ConstraintsColumns {
        public static final String EXTENDED_METADATA = "extended_metadata";
        public static final String LICENSE_AVAILABLE_TIME = "license_available_time";
        public static final String LICENSE_EXPIRY_TIME = "license_expiry_time";
        public static final String LICENSE_START_TIME = "license_start_time";
        public static final String MAX_REPEAT_COUNT = "max_repeat_count";
        public static final String REMAINING_REPEAT_COUNT = "remaining_repeat_count";
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/drm/DrmStore$DrmObjectType.class
 */
    public static class DrmObjectType {
        public static final int CONTENT = 1;
        public static final int RIGHTS_OBJECT = 2;
        public static final int TRIGGER_OBJECT = 3;
        public static final int UNKNOWN = 0;

        @Deprecated
        public DrmObjectType() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/drm/DrmStore$Playback.class
 */
    public static class Playback {
        public static final int PAUSE = 2;
        public static final int RESUME = 3;
        public static final int START = 0;
        public static final int STOP = 1;

        @Deprecated
        public Playback() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/drm/DrmStore$Action.class
 */
    public static class Action {
        public static final int DEFAULT = 0;
        public static final int DISPLAY = 7;
        public static final int EXECUTE = 6;
        public static final int OUTPUT = 4;
        public static final int PLAY = 1;
        public static final int PREVIEW = 5;
        public static final int RINGTONE = 2;
        public static final int TRANSFER = 3;

        @Deprecated
        public Action() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/drm/DrmStore$RightsStatus.class
 */
    public static class RightsStatus {
        public static final int RIGHTS_EXPIRED = 2;
        public static final int RIGHTS_INVALID = 1;
        public static final int RIGHTS_NOT_ACQUIRED = 3;
        public static final int RIGHTS_VALID = 0;

        @Deprecated
        public RightsStatus() {
            throw new RuntimeException("Stub!");
        }
    }

    @Deprecated
    public DrmStore() {
        throw new RuntimeException("Stub!");
    }
}
