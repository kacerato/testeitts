package Ii;

import Bi.EnumC2383o;
import Xi.K0;

public class U implements Bi.D, org.bouncycastle.util.n {

    public static final int f9580c = 256;

    public static final int f9581d = 512;

    public static final int f9582e = 1024;

    public final EnumC2383o f9583a;

    public V f9584b;

    public U(int i10, int i11) {
        this(i10, i11, EnumC2383o.ANY);
    }

    public void a(K0 k02) {
        this.f9584b.i(k02);
    }

    @Override
    public String b() {
        return "Skein-" + (this.f9584b.f() * 8) + "-" + (this.f9584b.h() * 8);
    }

    @Override
    public int c(byte[] bArr, int i10) {
        return this.f9584b.e(bArr, i10);
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new U(this);
    }

    @Override
    public int f() {
        return this.f9584b.h();
    }

    @Override
    public int i() {
        return this.f9584b.f();
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        this.f9584b.j(((U) nVar).f9584b);
    }

    @Override
    public void reset() {
        this.f9584b.n();
    }

    @Override
    public void update(byte b10) {
        this.f9584b.s(b10);
    }

    public U(int i10, int i11, EnumC2383o enumC2383o) {
        this.f9584b = new V(i10, i11);
        this.f9583a = enumC2383o;
        a(null);
        Bi.r.a(Z.a(this, f() * 4, enumC2383o));
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f9584b.t(bArr, i10, i11);
    }

    public U(U u10) {
        this.f9584b = new V(u10.f9584b);
        EnumC2383o enumC2383o = u10.f9583a;
        this.f9583a = enumC2383o;
        Bi.r.a(Z.a(this, u10.f() * 4, enumC2383o));
    }
}
