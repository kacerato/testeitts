package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class O extends AbstractC2664w {

    public static final int f9561r = 64;

    public O() {
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
        return "SHA-512";
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
        org.bouncycastle.util.p.D(this.f9988l, bArr, i10 + 48);
        org.bouncycastle.util.p.D(this.f9989m, bArr, i10 + 56);
        reset();
        return 64;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new O(this);
    }

    @Override
    public int f() {
        return 64;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        q((O) nVar);
    }

    @Override
    public InterfaceC2382n r() {
        return Z.a(this, 256, this.f9977a);
    }

    @Override
    public void reset() {
        super.reset();
        this.f9982f = 7640891576956012808L;
        this.f9983g = -4942790177534073029L;
        this.f9984h = 4354685564936845355L;
        this.f9985i = -6534734903238641935L;
        this.f9986j = 5840696475078001361L;
        this.f9987k = -7276294671716946913L;
        this.f9988l = 2270897969802886507L;
        this.f9989m = 6620516959819538809L;
    }

    public O(EnumC2383o enumC2383o) {
        super(enumC2383o);
        Bi.r.a(r());
        reset();
    }

    public O(O o10) {
        super(o10);
        Bi.r.a(r());
    }

    public O(byte[] bArr) {
        super(EnumC2383o.values()[bArr[bArr.length - 1]]);
        y(bArr);
        Bi.r.a(r());
    }
}
