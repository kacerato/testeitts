package android.os;

import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/TokenWatcher.class
 */
public abstract class TokenWatcher {
    public abstract void acquired();

    public abstract void released();

    public TokenWatcher(Handler h10, String tag) {
        throw new RuntimeException("Stub!");
    }

    public void acquire(IBinder token, String tag) {
        throw new RuntimeException("Stub!");
    }

    public void cleanup(IBinder token, boolean unlink) {
        throw new RuntimeException("Stub!");
    }

    public void release(IBinder token) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAcquired() {
        throw new RuntimeException("Stub!");
    }

    public void dump() {
        throw new RuntimeException("Stub!");
    }

    public void dump(PrintWriter pw) {
        throw new RuntimeException("Stub!");
    }
}
