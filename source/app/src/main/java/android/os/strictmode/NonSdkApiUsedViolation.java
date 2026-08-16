package android.os.strictmode;

public final class NonSdkApiUsedViolation extends Violation {
    NonSdkApiUsedViolation(String message) {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
