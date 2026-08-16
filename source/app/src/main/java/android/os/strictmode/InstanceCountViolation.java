package android.os.strictmode;

public class InstanceCountViolation extends Violation {
    InstanceCountViolation(Class klass, long instances, int limit) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public long getNumberOfInstances() {
        throw new RuntimeException("Stub!");
    }
}
