package Ii;

import Bi.EnumC2383o;

public final class C2656n extends AbstractC2655m {

    public static final byte[] f9916n = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};

    public C2656n() {
        super(f9916n, EnumC2383o.ANY);
    }

    @Override
    public String b() {
        return "GOST3411-2012-256";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[64];
        super.c(bArr2, 0);
        System.arraycopy(bArr2, 32, bArr, i10, 32);
        return 32;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new C2656n(this);
    }

    @Override
    public int f() {
        return 32;
    }

    public C2656n(EnumC2383o enumC2383o) {
        super(f9916n, enumC2383o);
    }

    public C2656n(C2656n c2656n) {
        super(f9916n, c2656n.f9915j);
        j(c2656n);
    }
}
