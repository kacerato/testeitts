package android.service.vr;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/vr/VrListenerService.class
 */
public abstract class VrListenerService extends Service {
    public static final String SERVICE_INTERFACE = "android.service.vr.VrListenerService";

    public VrListenerService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onCurrentVrActivityChanged(ComponentName component) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean isVrModePackageEnabled(Context context, ComponentName requestedComponent) {
        throw new RuntimeException("Stub!");
    }
}
