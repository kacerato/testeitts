package nf;

public final class C14405d {
    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final char a(int i10) {
        if (i10 >= 0 && i10 <= 65535) {
            return (char) i10;
        }
        throw new IllegalArgumentException("Invalid Char code: " + i10);
    }

    public static final int b(char c10) {
        return c10;
    }

    @Ef.f
    @Ef.g
    @InterfaceC14422l0(version = "1.5")
    public static void c(char c10) {
    }
}
