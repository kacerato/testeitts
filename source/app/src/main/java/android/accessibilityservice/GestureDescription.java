package android.accessibilityservice;

import android.graphics.Path;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/GestureDescription.class
 */
public final class GestureDescription {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/GestureDescription$Builder.class
 */
    public static class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder addStroke(StrokeDescription strokeDescription) {
            throw new RuntimeException("Stub!");
        }

        public GestureDescription build() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/GestureDescription$StrokeDescription.class
 */
    public static class StrokeDescription {
        public StrokeDescription(Path path, long startTime, long duration) {
            throw new RuntimeException("Stub!");
        }

        public StrokeDescription(Path path, long startTime, long duration, boolean willContinue) {
            throw new RuntimeException("Stub!");
        }

        public Path getPath() {
            throw new RuntimeException("Stub!");
        }

        public long getStartTime() {
            throw new RuntimeException("Stub!");
        }

        public long getDuration() {
            throw new RuntimeException("Stub!");
        }

        public StrokeDescription continueStroke(Path path, long startTime, long duration, boolean willContinue) {
            throw new RuntimeException("Stub!");
        }

        public boolean willContinue() {
            throw new RuntimeException("Stub!");
        }
    }

    GestureDescription() {
        throw new RuntimeException("Stub!");
    }

    public static int getMaxStrokeCount() {
        throw new RuntimeException("Stub!");
    }

    public static long getMaxGestureDuration() {
        throw new RuntimeException("Stub!");
    }

    public int getStrokeCount() {
        throw new RuntimeException("Stub!");
    }

    public StrokeDescription getStroke(int index) {
        throw new RuntimeException("Stub!");
    }
}
