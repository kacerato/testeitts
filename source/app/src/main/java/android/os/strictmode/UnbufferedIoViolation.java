package android.os.strictmode;

public final class UnbufferedIoViolation extends Violation {
    UnbufferedIoViolation() {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
