package Ii;

import Bi.EnumC2383o;

public class N extends C2663v {
    public N() {
        this(256, EnumC2383o.ANY);
    }

    private static int s(int i10) {
        if (i10 == 224 || i10 == 256 || i10 == 384 || i10 == 512) {
            return i10;
        }
        throw new IllegalArgumentException("'bitLength' " + i10 + " not supported for SHA-3");
    }

    @Override
    public String b() {
        return "SHA3-" + this.f9973f;
    }

    @Override
    public int c(byte[] bArr, int i10) {
        l(2, 2);
        return super.c(bArr, i10);
    }

    @Override
    public int n(byte[] bArr, int i10, byte b10, int i11) {
        if (i11 < 0 || i11 > 7) {
            throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
        }
        int i12 = (b10 & ((1 << i11) - 1)) | (2 << i11);
        int i13 = i11 + 2;
        if (i13 >= 8) {
            j((byte) i12);
            i13 = i11 - 6;
            i12 >>>= 8;
        }
        return super.n(bArr, i10, (byte) i12, i13);
    }

    public N(int i10) {
        super(s(i10), EnumC2383o.ANY);
    }

    public N(int i10, EnumC2383o enumC2383o) {
        super(s(i10), enumC2383o);
    }

    public N(EnumC2383o enumC2383o) {
        this(256, enumC2383o);
    }

    public N(N n10) {
        super(n10);
    }
}
