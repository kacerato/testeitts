package android.service.carrier;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.PersistableBundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/carrier/CarrierService.class
 */
public abstract class CarrierService extends Service {
    public static final String CARRIER_SERVICE_INTERFACE = "android.service.carrier.CarrierService";

    public abstract PersistableBundle onLoadConfig(CarrierIdentifier carrierIdentifier);

    public CarrierService() {
        throw new RuntimeException("Stub!");
    }

    public final void notifyCarrierNetworkChange(boolean active) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
