package android.test;

import android.app.Activity;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/ActivityInstrumentationTestCase.class
 */
@Deprecated
public abstract class ActivityInstrumentationTestCase<T extends Activity> extends ActivityTestCase {
    public ActivityInstrumentationTestCase(String pkg, Class<T> activityClass) {
        throw new RuntimeException("Stub!");
    }

    public ActivityInstrumentationTestCase(String pkg, Class<T> activityClass, boolean initialTouchMode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public T getActivity() {
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

    public void testActivityTestCaseSetUpProperly() throws Exception {
        throw new RuntimeException("Stub!");
    }
}
