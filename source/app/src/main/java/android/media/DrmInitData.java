package android.media;

import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/DrmInitData.class
 */
public abstract class DrmInitData {
    public abstract SchemeInitData get(UUID uuid);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/DrmInitData$SchemeInitData.class
 */
    public static final class SchemeInitData {
        public final byte[] data = null;
        public final String mimeType;

        SchemeInitData() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object obj) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }
    }

    DrmInitData() {
        throw new RuntimeException("Stub!");
    }
}
