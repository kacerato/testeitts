package android.test;

import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/ServiceTestCase.class
 */
@Deprecated
public abstract class ServiceTestCase<T extends Service> extends AndroidTestCase {
    public ServiceTestCase(Class<T> serviceClass) {
        throw new RuntimeException("Stub!");
    }

    public T getService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void setUp() throws Exception {
        throw new RuntimeException("Stub!");
    }

    protected void setupService() {
        throw new RuntimeException("Stub!");
    }

    protected void startService(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    protected IBinder bindService(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    protected void shutdownService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void tearDown() throws Exception {
        throw new RuntimeException("Stub!");
    }

    public void setApplication(Application application) {
        throw new RuntimeException("Stub!");
    }

    public Application getApplication() {
        throw new RuntimeException("Stub!");
    }

    public Context getSystemContext() {
        throw new RuntimeException("Stub!");
    }

    public void testServiceTestCaseSetUpProperly() throws Exception {
        throw new RuntimeException("Stub!");
    }
}
