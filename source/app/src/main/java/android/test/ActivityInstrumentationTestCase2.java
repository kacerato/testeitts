package android.test;

import android.app.Activity;
import android.content.Intent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/ActivityInstrumentationTestCase2.class
 */
@Deprecated
public abstract class ActivityInstrumentationTestCase2<T extends Activity> extends ActivityTestCase {
    @Deprecated
    public ActivityInstrumentationTestCase2(String pkg, Class<T> activityClass) {
        throw new RuntimeException("Stub!");
    }

    public ActivityInstrumentationTestCase2(Class<T> activityClass) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public T getActivity() {
        throw new RuntimeException("Stub!");
    }

    public void setActivityIntent(Intent i10) {
        throw new RuntimeException("Stub!");
    }

    public void setActivityInitialTouchMode(boolean initialTouchMode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void setUp() throws Exception {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void tearDown() throws Exception {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void runTest() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
