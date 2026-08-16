package android.webkit;

import android.content.Context;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebSyncManager.class
 */
@Deprecated
abstract class WebSyncManager implements Runnable {
    protected static final String LOGTAG = "websync";
    protected WebViewDatabase mDataBase;
    protected Handler mHandler;

    public WebSyncManager(Context context, String name) {
        throw new RuntimeException("Stub!");
    }

    protected Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void run() {
        throw new RuntimeException("Stub!");
    }

    public void sync() {
        throw new RuntimeException("Stub!");
    }

    public void resetSync() {
        throw new RuntimeException("Stub!");
    }

    public void startSync() {
        throw new RuntimeException("Stub!");
    }

    public void stopSync() {
        throw new RuntimeException("Stub!");
    }

    protected void onSyncInit() {
        throw new RuntimeException("Stub!");
    }
}
