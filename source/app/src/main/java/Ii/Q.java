package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class Q extends C2663v implements Bi.a0 {
    public Q() {
        this(128);
    }

    public static int s(int i10) {
        if (i10 == 128 || i10 == 256) {
            return i10;
        }
        throw new IllegalArgumentException("'bitStrength' " + i10 + " not supported for SHAKE");
    }

    @Override
    public String b() {
        return "SHAKE" + this.f9973f;
    }

    @Override
    public int c(byte[] bArr, int i10) {
        return e(bArr, i10, f());
    }

    @Override
    public int e(byte[] bArr, int i10, int i11) {
        int h10 = h(bArr, i10, i11);
        reset();
        return h10;
    }

    @Override
    public int f() {
        return this.f9973f / 4;
    }

    @Override
    public int h(byte[] bArr, int i10, int i11) {
        if (!this.f9974g) {
            l(15, 4);
        }
        r(bArr, i10, i11 * 8);
        return i11;
    }

    @Override
    public InterfaceC2382n m() {
        return Z.b(this, this.f9968a);
    }

    @Override
    public int n(byte[] bArr, int i10, byte b10, int i11) {
        return t(bArr, i10, f(), b10, i11);
    }

    public int t(byte[] bArr, int i10, int i11, byte b10, int i12) {
        if (i12 < 0 || i12 > 7) {
            throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
        }
        int i13 = (b10 & ((1 << i12) - 1)) | (15 << i12);
        int i14 = i12 + 4;
        if (i14 >= 8) {
            j((byte) i13);
            i14 = i12 - 4;
            i13 >>>= 8;
        }
        if (i14 > 0) {
            l(i13, i14);
        }
        r(bArr, i10, i11 * 8);
        reset();
        return i11;
    }

    public Q(int i10) {
        super(s(i10), EnumC2383o.ANY);
    }

    public Q(int i10, EnumC2383o enumC2383o) {
        super(s(i10), enumC2383o);
    }

    public Q(EnumC2383o enumC2383o) {
        this(128, enumC2383o);
    }

    public Q(Q q10) {
        super(q10);
    }
}
