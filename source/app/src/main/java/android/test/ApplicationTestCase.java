package android.test;

import android.app.Application;
import android.content.Context;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/ApplicationTestCase.class
 */
@Deprecated
public abstract class ApplicationTestCase<T extends Application> extends AndroidTestCase {
    public ApplicationTestCase(Class<T> applicationClass) {
        throw new RuntimeException("Stub!");
    }

    public T getApplication() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void setUp() throws Exception {
        throw new RuntimeException("Stub!");
    }

    protected final void createApplication() {
        throw new RuntimeException("Stub!");
    }

    protected final void terminateApplication() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void tearDown() throws Exception {
        throw new RuntimeException("Stub!");
    }

    public Context getSystemContext() {
        throw new RuntimeException("Stub!");
    }

    public final void testApplicationTestCaseSetUpProperly() throws Exception {
        throw new RuntimeException("Stub!");
    }
}
