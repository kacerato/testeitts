package android.test.mock;

import android.app.Application;
import android.content.res.Configuration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/mock/MockApplication.class
 */
@Deprecated
public class MockApplication extends Application {
    public MockApplication() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onTerminate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }
}
