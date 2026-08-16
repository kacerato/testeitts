package z9;

public enum EnumC16276c {
    Off,
    Low,
    Medium,
    High;

    public int b() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return 0;
        }
        if (ordinal == 1) {
            return 2;
        }
        if (ordinal == 2) {
            return 4;
        }
        if (ordinal == 3) {
            return 6;
        }
        throw new RuntimeException();
    }
}
