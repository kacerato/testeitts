package Ii;

import Bi.EnumC2383o;

public class C2657o extends AbstractC2655m {

    public static final byte[] f9917n = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    public C2657o() {
        super(f9917n, EnumC2383o.ANY);
    }

    @Override
    public String b() {
        return "GOST3411-2012-512";
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new C2657o(this);
    }

    @Override
    public int f() {
        return 64;
    }

    public C2657o(EnumC2383o enumC2383o) {
        super(f9917n, enumC2383o);
    }

    public C2657o(C2657o c2657o) {
        super(f9917n, c2657o.f9915j);
        j(c2657o);
    }
}
