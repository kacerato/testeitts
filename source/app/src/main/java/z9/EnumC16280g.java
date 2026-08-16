package z9;

public enum EnumC16280g {
    Low,
    Medium,
    High,
    Ultra,
    Insane;

    public int b() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return 70;
        }
        if (ordinal == 1) {
            return 96;
        }
        if (ordinal == 2) {
            return 128;
        }
        if (ordinal == 3) {
            return 250;
        }
        if (ordinal == 4) {
            return 300;
        }
        throw new RuntimeException();
    }

    public float c() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return 0.5f;
        }
        if (ordinal == 1) {
            return 1.0f;
        }
        if (ordinal == 2) {
            return 2.0f;
        }
        if (ordinal == 3) {
            return 4.0f;
        }
        if (ordinal == 4) {
            return 8.0f;
        }
        throw new RuntimeException();
    }
}
