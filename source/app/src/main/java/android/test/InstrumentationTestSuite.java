package android.test;

import android.app.Instrumentation;
import junit.framework.Test;
import junit.framework.TestResult;
import junit.framework.TestSuite;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/InstrumentationTestSuite.class
 */
@Deprecated
public class InstrumentationTestSuite extends TestSuite {
    public InstrumentationTestSuite(Instrumentation instr) {
        throw new RuntimeException("Stub!");
    }

    public InstrumentationTestSuite(String name, Instrumentation instr) {
        throw new RuntimeException("Stub!");
    }

    public InstrumentationTestSuite(Class theClass, Instrumentation instr) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addTestSuite(Class testClass) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void runTest(Test test, TestResult result) {
        throw new RuntimeException("Stub!");
    }
}
