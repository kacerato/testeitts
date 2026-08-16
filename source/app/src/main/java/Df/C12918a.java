package df;

public class C12918a {
    public static short a(int i10) {
        return (short) (((i10 & 255) >> 3) | (((65280 & i10) >> 10) << 5) | (((16711680 & i10) >> 19) << 11));
    }

    public static int b(short s10) {
        return ((s10 & 31) << 3) | (((63488 & s10) >> 11) << 19) | (-16777216) | (((s10 & 2016) >> 5) << 10);
    }
}
