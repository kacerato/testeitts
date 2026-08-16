package Fg;

public class a {
    public static boolean a(byte b10, int i10) {
        return ((1 << i10) & ((long) b10)) != 0;
    }

    public static byte b(byte b10, int i10) {
        return (byte) (b10 | (1 << i10));
    }

    public static byte c(byte b10, int i10) {
        return (byte) (b10 & (~(1 << i10)));
    }
}
