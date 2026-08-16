package android.app;

import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/IntentService.class
 */
public abstract class IntentService extends Service {
    protected abstract void onHandleIntent(Intent intent);

    public IntentService(String name) {
        throw new RuntimeException("Stub!");
    }

    public void setIntentRedelivery(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onStart(Intent intent, int startId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDestroy() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
