package Od;

public enum p {
    START(0),
    TOP(1),
    END(2),
    BOTTOM(3);

    private final int value;

    p(int i10) {
        this.value = i10;
    }

    public final int a() {
        return this.value;
    }
}
