package cl;

public class o {
    public static short a(short s10) {
        return (short) (s10 - ((short) (((short) ((((short) 20159) * s10) >> 26)) * 3329)));
    }

    public static short b(short s10) {
        short s11 = (short) (s10 - 3329);
        return (short) (s11 + ((s11 >> 15) & C4219b.f34966u));
    }

    public static short c(int i10) {
        return (short) ((i10 - (((short) (C4219b.f34967v * i10)) * 3329)) >> 16);
    }
}
