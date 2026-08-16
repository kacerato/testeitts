package android.test;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.net.Uri;
import java.io.File;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/IsolatedContext.class
 */
@Deprecated
public class IsolatedContext extends ContextWrapper {
    public IsolatedContext(ContentResolver resolver, Context targetContext) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public List<Intent> getAndClearBroadcastIntents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ContentResolver getContentResolver() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean bindService(Intent service, ServiceConnection conn, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Intent registerReceiver(BroadcastReceiver receiver, IntentFilter filter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unregisterReceiver(BroadcastReceiver receiver) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendBroadcast(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendOrderedBroadcast(Intent intent, String receiverPermission) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkUriPermission(Uri uri, String readPermission, String writePermission, int pid, int uid, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkUriPermission(Uri uri, int pid, int uid, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getSystemService(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getFilesDir() {
        throw new RuntimeException("Stub!");
    }
}
