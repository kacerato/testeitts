package android.os.strictmode;

public final class NetworkViolation extends Violation {
    NetworkViolation() {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
