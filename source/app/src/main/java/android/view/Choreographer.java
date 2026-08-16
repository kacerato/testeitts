package android.view;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/Choreographer.class
 */
public final class Choreographer {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/Choreographer$FrameCallback.class
 */
    public interface FrameCallback {
        void doFrame(long j10);
    }

    public interface VsyncCallback {
        static {
            throw new NoClassDefFoundError();
        }
    }

    Choreographer() {
        throw new RuntimeException("Stub!");
    }

    public static Choreographer getInstance() {
        throw new RuntimeException("Stub!");
    }

    public void postFrameCallback(FrameCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void postFrameCallbackDelayed(FrameCallback callback, long delayMillis) {
        throw new RuntimeException("Stub!");
    }

    public void removeFrameCallback(FrameCallback callback) {
        throw new RuntimeException("Stub!");
    }
}
