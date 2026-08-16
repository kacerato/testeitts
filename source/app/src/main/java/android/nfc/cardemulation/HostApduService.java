package android.nfc.cardemulation;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/cardemulation/HostApduService.class
 */
public abstract class HostApduService extends Service {
    public static final int DEACTIVATION_DESELECTED = 1;
    public static final int DEACTIVATION_LINK_LOSS = 0;
    public static final String SERVICE_INTERFACE = "android.nfc.cardemulation.action.HOST_APDU_SERVICE";
    public static final String SERVICE_META_DATA = "android.nfc.cardemulation.host_apdu_service";

    public abstract byte[] processCommandApdu(byte[] bArr, Bundle bundle);

    public abstract void onDeactivated(int i10);

    public HostApduService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public final void sendResponseApdu(byte[] responseApdu) {
        throw new RuntimeException("Stub!");
    }

    public final void notifyUnhandled() {
        throw new RuntimeException("Stub!");
    }
}
