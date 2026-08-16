package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class M extends AbstractC2664w {

    public static final int f9560r = 48;

    public M() {
        this(EnumC2383o.ANY);
    }

    @Override
    public byte[] a() {
        int t10 = t();
        byte[] bArr = new byte[t10 + 1];
        super.u(bArr);
        bArr[t10] = (byte) this.f9977a.ordinal();
        return bArr;
    }

    @Override
    public String b() {
        return "SHA-384";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        s();
        org.bouncycastle.util.p.D(this.f9982f, bArr, i10);
        org.bouncycastle.util.p.D(this.f9983g, bArr, i10 + 8);
        org.bouncycastle.util.p.D(this.f9984h, bArr, i10 + 16);
        org.bouncycastle.util.p.D(this.f9985i, bArr, i10 + 24);
        org.bouncycastle.util.p.D(this.f9986j, bArr, i10 + 32);
        org.bouncycastle.util.p.D(this.f9987k, bArr, i10 + 40);
        reset();
        return 48;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new M(this);
    }

    @Override
    public int f() {
        return 48;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        super.q((M) nVar);
    }

    @Override
    public InterfaceC2382n r() {
        return Z.a(this, 256, this.f9977a);
    }

    @Override
    public void reset() {
        super.reset();
        this.f9982f = -3766243637369397544L;
        this.f9983g = 7105036623409894663L;
        this.f9984h = -7973340178411365097L;
        this.f9985i = 1526699215303891257L;
        this.f9986j = 7436329637833083697L;
        this.f9987k = -8163818279084223215L;
        this.f9988l = -2662702644619276377L;
        this.f9989m = 5167115440072839076L;
    }

    public M(EnumC2383o enumC2383o) {
        super(enumC2383o);
        Bi.r.a(r());
        reset();
    }

    public M(M m10) {
        super(m10);
        Bi.r.a(r());
    }

    public M(byte[] bArr) {
        super(EnumC2383o.values()[bArr[bArr.length - 1]]);
        y(bArr);
        Bi.r.a(r());
    }
}
