package android.nfc.cardemulation;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/cardemulation/OffHostApduService.class
 */
public abstract class OffHostApduService extends Service {
    public static final String SERVICE_INTERFACE = "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE";
    public static final String SERVICE_META_DATA = "android.nfc.cardemulation.off_host_apdu_service";

    @Override
    public abstract IBinder onBind(Intent intent);

    public OffHostApduService() {
        throw new RuntimeException("Stub!");
    }
}
