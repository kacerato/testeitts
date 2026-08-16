package android.test.suitebuilder;

import com.android.internal.util.Predicate;
import java.util.List;
import junit.framework.TestCase;
import junit.framework.TestSuite;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/suitebuilder/TestSuiteBuilder.class
 */
@Deprecated
public class TestSuiteBuilder {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests.class
 */
    @Deprecated
    public static class FailedToCreateTests extends TestCase {
        public FailedToCreateTests(Exception exception) {
            throw new RuntimeException("Stub!");
        }

        public void testSuiteConstructionFailed() {
            throw new RuntimeException("Stub!");
        }
    }

    public TestSuiteBuilder(Class clazz) {
        throw new RuntimeException("Stub!");
    }

    public TestSuiteBuilder(String name, ClassLoader classLoader) {
        throw new RuntimeException("Stub!");
    }

    public TestSuiteBuilder includePackages(String... packageNames) {
        throw new RuntimeException("Stub!");
    }

    public TestSuiteBuilder excludePackages(String... packageNames) {
        throw new RuntimeException("Stub!");
    }

    public TestSuiteBuilder addRequirements(List<Predicate<TestMethod>> predicates) {
        throw new RuntimeException("Stub!");
    }

    public final TestSuiteBuilder includeAllPackagesUnderHere() {
        throw new RuntimeException("Stub!");
    }

    public TestSuiteBuilder named(String newSuiteName) {
        throw new RuntimeException("Stub!");
    }

    public final TestSuite build() {
        throw new RuntimeException("Stub!");
    }

    protected String getSuiteName() {
        throw new RuntimeException("Stub!");
    }

    public final TestSuiteBuilder addRequirements(Predicate<TestMethod>... predicates) {
        throw new RuntimeException("Stub!");
    }
}
