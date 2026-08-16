package android.location;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/SettingInjectorService.class
 */
public abstract class SettingInjectorService extends Service {
    public static final String ACTION_INJECTED_SETTING_CHANGED = "android.location.InjectedSettingChanged";
    public static final String ACTION_SERVICE_INTENT = "android.location.SettingInjectorService";
    public static final String ATTRIBUTES_NAME = "injected-location-setting";
    public static final String META_DATA_NAME = "android.location.SettingInjectorService";

    @Deprecated
    protected abstract String onGetSummary();

    protected abstract boolean onGetEnabled();

    public SettingInjectorService(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void onStart(Intent intent, int startId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int onStartCommand(Intent intent, int flags, int startId) {
        throw new RuntimeException("Stub!");
    }
}
