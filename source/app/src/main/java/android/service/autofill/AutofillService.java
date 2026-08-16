package android.service.autofill;

import android.app.Service;
import android.content.Intent;
import android.os.CancellationSignal;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/AutofillService.class
 */
public abstract class AutofillService extends Service {
    public static final String SERVICE_INTERFACE = "android.service.autofill.AutofillService";
    public static final String SERVICE_META_DATA = "android.autofill";

    public abstract void onFillRequest(FillRequest fillRequest, CancellationSignal cancellationSignal, FillCallback fillCallback);

    public abstract void onSaveRequest(SaveRequest saveRequest, SaveCallback saveCallback);

    public AutofillService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onConnected() {
        throw new RuntimeException("Stub!");
    }

    public void onDisconnected() {
        throw new RuntimeException("Stub!");
    }

    public final FillEventHistory getFillEventHistory() {
        throw new RuntimeException("Stub!");
    }
}
