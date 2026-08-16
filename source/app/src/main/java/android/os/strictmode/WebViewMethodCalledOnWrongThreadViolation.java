package android.os.strictmode;

public final class WebViewMethodCalledOnWrongThreadViolation extends Violation {
    WebViewMethodCalledOnWrongThreadViolation(Throwable originStack) {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
