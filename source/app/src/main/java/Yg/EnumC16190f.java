package yg;

public enum EnumC16190f {
    SPECIFICATION_VERSION((byte) 51),
    WINDOWS((byte) 0),
    UNIX((byte) 3);

    private final byte code;

    EnumC16190f(byte b10) {
        this.code = b10;
    }

    public byte a() {
        return this.code;
    }
}
