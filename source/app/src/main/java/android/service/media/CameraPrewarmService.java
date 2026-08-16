package android.service.media;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/media/CameraPrewarmService.class
 */
public abstract class CameraPrewarmService extends Service {
    public abstract void onPrewarm();

    public abstract void onCooldown(boolean z10);

    public CameraPrewarmService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onUnbind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
