package android.test;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Intent;
import android.os.Bundle;
import junit.framework.TestCase;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/InstrumentationTestCase.class
 */
@Deprecated
public class InstrumentationTestCase extends TestCase {
    public InstrumentationTestCase() {
        throw new RuntimeException("Stub!");
    }

    public void injectInstrumentation(Instrumentation instrumentation) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void injectInsrumentation(Instrumentation instrumentation) {
        throw new RuntimeException("Stub!");
    }

    public Instrumentation getInstrumentation() {
        throw new RuntimeException("Stub!");
    }

    public final <T extends Activity> T launchActivity(String pkg, Class<T> activityCls, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public final <T extends Activity> T launchActivityWithIntent(String pkg, Class<T> activityCls, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void runTestOnUiThread(Runnable r10) throws Throwable {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void runTest() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public void sendKeys(String keysSequence) {
        throw new RuntimeException("Stub!");
    }

    public void sendKeys(int... keys) {
        throw new RuntimeException("Stub!");
    }

    public void sendRepeatedKeys(int... keys) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void tearDown() throws Exception {
        throw new RuntimeException("Stub!");
    }
}
