package android.os.strictmode;

public final class ServiceConnectionLeakedViolation extends Violation {
    ServiceConnectionLeakedViolation(Throwable originStack) {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
