package Od;

public enum o {
    DROPDOWN(0),
    FADE(1),
    BOUNCE(2),
    NORMAL(3);

    private final int value;

    o(int i10) {
        this.value = i10;
    }

    public final int a() {
        return this.value;
    }
}
