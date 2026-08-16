package android.webkit;

import android.content.Context;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/CookieSyncManager.class
 */
@Deprecated
public final class CookieSyncManager extends WebSyncManager {
    protected static final String LOGTAG = "websync";
    protected WebViewDatabase mDataBase;
    protected Handler mHandler;

    @Override
    public void run() {
        super.run();
    }

    CookieSyncManager() {
        super((Context) null, (String) null);
        throw new RuntimeException("Stub!");
    }

    public static CookieSyncManager getInstance() {
        throw new RuntimeException("Stub!");
    }

    public static CookieSyncManager createInstance(Context context) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void sync() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected void syncFromRamToFlash() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void resetSync() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void startSync() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void stopSync() {
        throw new RuntimeException("Stub!");
    }
}
