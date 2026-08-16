package android.test;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/ComparisonFailure.class
 */
@Deprecated
public class ComparisonFailure extends AssertionFailedError {
    public ComparisonFailure(String message, String expected, String actual) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getMessage() {
        throw new RuntimeException("Stub!");
    }
}
