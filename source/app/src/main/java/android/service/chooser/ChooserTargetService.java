package android.service.chooser;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/chooser/ChooserTargetService.class
 */
public abstract class ChooserTargetService extends Service {
    public static final String BIND_PERMISSION = "android.permission.BIND_CHOOSER_TARGET_SERVICE";
    public static final String META_DATA_NAME = "android.service.chooser.chooser_target_service";
    public static final String SERVICE_INTERFACE = "android.service.chooser.ChooserTargetService";

    public abstract List<ChooserTarget> onGetChooserTargets(ComponentName componentName, IntentFilter intentFilter);

    public ChooserTargetService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
