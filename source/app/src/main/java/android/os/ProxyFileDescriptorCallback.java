package android.os;

import android.system.ErrnoException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/ProxyFileDescriptorCallback.class
 */
public abstract class ProxyFileDescriptorCallback {
    public abstract void onRelease();

    public ProxyFileDescriptorCallback() {
        throw new RuntimeException("Stub!");
    }

    public long onGetSize() throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public int onRead(long offset, int size, byte[] data) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public int onWrite(long offset, int size, byte[] data) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public void onFsync() throws ErrnoException {
        throw new RuntimeException("Stub!");
    }
}
