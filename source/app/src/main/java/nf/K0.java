package nf;

@Lf.j(name = "UNumbersKt")
public final class K0 {
    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int A(int i10) {
        return B0.o(Integer.lowestOneBit(i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final short B(short s10) {
        return L0.i((short) Integer.lowestOneBit(s10 & 65535));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int a(byte b10) {
        return Integer.numberOfLeadingZeros(b10 & 255) - 24;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int b(long j10) {
        return Long.numberOfLeadingZeros(j10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int c(int i10) {
        return Integer.numberOfLeadingZeros(i10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int d(short s10) {
        return Integer.numberOfLeadingZeros(s10 & 65535) - 16;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int e(byte b10) {
        return Integer.bitCount(B0.o(b10 & 255));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int f(long j10) {
        return Long.bitCount(j10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int g(int i10) {
        return Integer.bitCount(i10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int h(short s10) {
        return Integer.bitCount(B0.o(s10 & 65535));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int i(byte b10) {
        return Integer.numberOfTrailingZeros(b10 | 256);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int j(long j10) {
        return Long.numberOfTrailingZeros(j10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int k(int i10) {
        return Integer.numberOfTrailingZeros(i10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int l(short s10) {
        return Integer.numberOfTrailingZeros(s10 | 65536);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final long m(long j10, int i10) {
        return F0.i(Long.rotateLeft(j10, i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final byte n(byte b10, int i10) {
        return x0.i(V.Z0(b10, i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final int o(int i10, int i11) {
        return B0.o(Integer.rotateLeft(i10, i11));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final short p(short s10, int i10) {
        return L0.i(V.a1(s10, i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final long q(long j10, int i10) {
        return F0.i(Long.rotateRight(j10, i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final byte r(byte b10, int i10) {
        return x0.i(V.b1(b10, i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final int s(int i10, int i11) {
        return B0.o(Integer.rotateRight(i10, i11));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final short t(short s10, int i10) {
        return L0.i(V.c1(s10, i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final byte u(byte b10) {
        return x0.i((byte) Integer.highestOneBit(b10 & 255));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final long v(long j10) {
        return F0.i(Long.highestOneBit(j10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int w(int i10) {
        return B0.o(Integer.highestOneBit(i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final short x(short s10) {
        return L0.i((short) Integer.highestOneBit(s10 & 65535));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final byte y(byte b10) {
        return x0.i((byte) Integer.lowestOneBit(b10 & 255));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final long z(long j10) {
        return F0.i(Long.lowestOneBit(j10));
    }
}
