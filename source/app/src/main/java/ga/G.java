package ga;

public enum G {
    SUCCESS(48),
    ERROR(49),
    ALERT(50),
    PROGRESS(51);

    private final int runtimeValue;

    G(int runtimeValue) {
        this.runtimeValue = runtimeValue;
    }

    public int b() {
        return this.runtimeValue;
    }
}
