package junit.framework;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:junit/framework/ComparisonFailure.class
 */
public class ComparisonFailure extends AssertionFailedError {
    public ComparisonFailure(String message, String expected, String actual) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getMessage() {
        throw new RuntimeException("Stub!");
    }

    public String getActual() {
        throw new RuntimeException("Stub!");
    }

    public String getExpected() {
        throw new RuntimeException("Stub!");
    }
}
