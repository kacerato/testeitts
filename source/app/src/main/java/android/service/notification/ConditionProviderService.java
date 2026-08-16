package android.service.notification;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/notification/ConditionProviderService.class
 */
public abstract class ConditionProviderService extends Service {
    public static final String EXTRA_RULE_ID = "android.service.notification.extra.RULE_ID";
    public static final String META_DATA_CONFIGURATION_ACTIVITY = "android.service.zen.automatic.configurationActivity";
    public static final String META_DATA_RULE_INSTANCE_LIMIT = "android.service.zen.automatic.ruleInstanceLimit";
    public static final String META_DATA_RULE_TYPE = "android.service.zen.automatic.ruleType";
    public static final String SERVICE_INTERFACE = "android.service.notification.ConditionProviderService";

    public abstract void onConnected();

    public abstract void onSubscribe(Uri uri);

    public abstract void onUnsubscribe(Uri uri);

    public ConditionProviderService() {
        throw new RuntimeException("Stub!");
    }

    public void onRequestConditions(int relevance) {
        throw new RuntimeException("Stub!");
    }

    public static final void requestRebind(ComponentName componentName) {
        throw new RuntimeException("Stub!");
    }

    public final void requestUnbind() {
        throw new RuntimeException("Stub!");
    }

    public final void notifyCondition(Condition condition) {
        throw new RuntimeException("Stub!");
    }

    public final void notifyConditions(Condition... conditions) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
