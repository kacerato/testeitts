package android.test;

import android.app.Instrumentation;
import android.content.Context;
import java.util.List;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestListener;
import junit.framework.TestResult;
import junit.runner.BaseTestRunner;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/AndroidTestRunner.class
 */
@Deprecated
public class AndroidTestRunner extends BaseTestRunner {
    public AndroidTestRunner() {
        throw new RuntimeException("Stub!");
    }

    public void setTestClassName(String testClassName, String testMethodName) {
        throw new RuntimeException("Stub!");
    }

    public void setTest(Test test) {
        throw new RuntimeException("Stub!");
    }

    public void clearTestListeners() {
        throw new RuntimeException("Stub!");
    }

    public void addTestListener(TestListener testListener) {
        throw new RuntimeException("Stub!");
    }

    protected TestResult createTestResult() {
        throw new RuntimeException("Stub!");
    }

    public List<TestCase> getTestCases() {
        throw new RuntimeException("Stub!");
    }

    public String getTestClassName() {
        throw new RuntimeException("Stub!");
    }

    public TestResult getTestResult() {
        throw new RuntimeException("Stub!");
    }

    public void runTest() {
        throw new RuntimeException("Stub!");
    }

    public void runTest(TestResult testResult) {
        throw new RuntimeException("Stub!");
    }

    public void setContext(Context context) {
        throw new RuntimeException("Stub!");
    }

    public void setInstrumentation(Instrumentation instrumentation) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setInstrumentaiton(Instrumentation instrumentation) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected Class loadSuiteClass(String suiteClassName) throws ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void testStarted(String testName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void testEnded(String testName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void testFailed(int status, Test test, Throwable t10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void runFailed(String message) {
        throw new RuntimeException("Stub!");
    }
}
