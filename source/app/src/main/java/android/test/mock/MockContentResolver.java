package android.test.mock;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/mock/MockContentResolver.class
 */
public class MockContentResolver extends ContentResolver {
    public MockContentResolver() {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public MockContentResolver(Context context) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public void addProvider(String name, ContentProvider provider) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void notifyChange(Uri uri, ContentObserver observer, boolean syncToNetwork) {
        throw new RuntimeException("Stub!");
    }
}
