package android.test;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/ActivityUnitTestCase.class
 */
@Deprecated
public abstract class ActivityUnitTestCase<T extends Activity> extends ActivityTestCase {
    public ActivityUnitTestCase(Class<T> activityClass) {
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

    protected T startActivity(Intent intent, Bundle savedInstanceState, Object lastNonConfigurationInstance) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void tearDown() throws Exception {
        throw new RuntimeException("Stub!");
    }

    public void setApplication(Application application) {
        throw new RuntimeException("Stub!");
    }

    public void setActivityContext(Context activityContext) {
        throw new RuntimeException("Stub!");
    }

    public int getRequestedOrientation() {
        throw new RuntimeException("Stub!");
    }

    public Intent getStartedActivityIntent() {
        throw new RuntimeException("Stub!");
    }

    public int getStartedActivityRequest() {
        throw new RuntimeException("Stub!");
    }

    public boolean isFinishCalled() {
        throw new RuntimeException("Stub!");
    }

    public int getFinishedActivityRequest() {
        throw new RuntimeException("Stub!");
    }
}
