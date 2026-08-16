package android.os.strictmode;

public abstract class Violation extends Throwable {
    public Violation(String message) {
        throw new RuntimeException("Stub!");
    }
}
