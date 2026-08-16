package android.os.strictmode;

public final class LeakedClosableViolation extends Violation {
    LeakedClosableViolation(String message, Throwable allocationSite) {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
