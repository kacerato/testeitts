package junit.runner;

import java.io.IOException;
import java.util.Properties;
import junit.framework.AssertionFailedError;
import junit.framework.Test;
import junit.framework.TestListener;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:junit/runner/BaseTestRunner.class
 */
public abstract class BaseTestRunner implements TestListener {
    public static final String SUITE_METHODNAME = "suite";

    public abstract void testStarted(String str);

    public abstract void testEnded(String str);

    public abstract void testFailed(int i10, Test test, Throwable th2);

    protected abstract void runFailed(String str);

    public BaseTestRunner() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void startTest(Test test) {
        throw new RuntimeException("Stub!");
    }

    protected static void setPreferences(Properties preferences) {
        throw new RuntimeException("Stub!");
    }

    protected static Properties getPreferences() {
        throw new RuntimeException("Stub!");
    }

    public static void savePreferences() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setPreference(String key, String value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void endTest(Test test) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void addError(Test test, Throwable t10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void addFailure(Test test, AssertionFailedError t10) {
        throw new RuntimeException("Stub!");
    }

    public Test getTest(String suiteClassName) {
        throw new RuntimeException("Stub!");
    }

    public String elapsedTimeAsString(long runTime) {
        throw new RuntimeException("Stub!");
    }

    protected String processArguments(String[] args) {
        throw new RuntimeException("Stub!");
    }

    public void setLoading(boolean enable) {
        throw new RuntimeException("Stub!");
    }

    public String extractClassName(String className) {
        throw new RuntimeException("Stub!");
    }

    public static String truncate(String s10) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public TestSuiteLoader getLoader() {
        throw new RuntimeException("Stub!");
    }

    protected Class<?> loadSuiteClass(String suiteClassName) throws ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    protected void clearStatus() {
        throw new RuntimeException("Stub!");
    }

    protected boolean useReloadingTestSuiteLoader() {
        throw new RuntimeException("Stub!");
    }

    public static String getPreference(String key) {
        throw new RuntimeException("Stub!");
    }

    public static int getPreference(String key, int dflt) {
        throw new RuntimeException("Stub!");
    }

    public static String getFilteredTrace(Throwable t10) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static boolean inVAJava() {
        throw new RuntimeException("Stub!");
    }

    public static String getFilteredTrace(String stack) {
        throw new RuntimeException("Stub!");
    }

    protected static boolean showStackRaw() {
        throw new RuntimeException("Stub!");
    }
}
