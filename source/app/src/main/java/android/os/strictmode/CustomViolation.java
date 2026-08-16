package android.os.strictmode;

public final class CustomViolation extends Violation {
    CustomViolation(String name) {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
