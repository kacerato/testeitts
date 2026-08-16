package android.os.strictmode;

public final class SqliteObjectLeakedViolation extends Violation {
    SqliteObjectLeakedViolation(String message, Throwable originStack) {
        super(null);
        throw new RuntimeException("Stub!");
    }
}
