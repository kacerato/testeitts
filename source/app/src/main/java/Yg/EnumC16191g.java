package yg;

public enum EnumC16191g {
    DEFAULT(10),
    DEFLATE_COMPRESSED(20),
    ZIP_64_FORMAT(45),
    AES_ENCRYPTED(51);

    private final int code;

    EnumC16191g(int i10) {
        this.code = i10;
    }

    public int a() {
        return this.code;
    }
}
