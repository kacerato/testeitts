package android.service.restrictions;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/restrictions/RestrictionsReceiver.class
 */
public abstract class RestrictionsReceiver extends BroadcastReceiver {
    public abstract void onRequestPermission(Context context, String str, String str2, String str3, PersistableBundle persistableBundle);

    public RestrictionsReceiver() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
