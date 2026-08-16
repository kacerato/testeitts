package android.test.suitebuilder;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import junit.framework.TestCase;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/suitebuilder/TestMethod.class
 */
@Deprecated
public class TestMethod {
    public TestMethod(Method method, Class<? extends TestCase> enclosingClass) {
        throw new RuntimeException("Stub!");
    }

    public TestMethod(String methodName, Class<? extends TestCase> enclosingClass) {
        throw new RuntimeException("Stub!");
    }

    public TestMethod(TestCase testCase) {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public String getEnclosingClassname() {
        throw new RuntimeException("Stub!");
    }

    public <T extends Annotation> T getAnnotation(Class<T> annotationClass) {
        throw new RuntimeException("Stub!");
    }

    public Class<? extends TestCase> getEnclosingClass() {
        throw new RuntimeException("Stub!");
    }

    public TestCase createTest() throws InvocationTargetException, IllegalAccessException, InstantiationException {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
