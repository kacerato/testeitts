package hl;

public class o {

    public static final int f91137a = 12287;

    public static final int f91138b = 18;

    public static final int f91139c = 262143;

    public static short a(short s10) {
        int i10 = s10 & 65535;
        return (short) (i10 - (((i10 * 5) >>> 16) * 12289));
    }

    public static short b(int i10) {
        return (short) (((((i10 * f91137a) & 262143) * 12289) + i10) >>> 18);
    }
}
