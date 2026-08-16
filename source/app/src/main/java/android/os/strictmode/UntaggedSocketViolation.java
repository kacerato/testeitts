package android.os.strictmode;

public final class UntaggedSocketViolation extends Violation {
    UntaggedSocketViolation() {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
