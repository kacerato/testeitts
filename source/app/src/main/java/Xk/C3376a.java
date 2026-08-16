package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class C3376a extends AbstractC14545v {

    public int f29484b;

    public byte[] f29485c;

    public byte[] f29486d;

    public byte[] f29487e;

    public byte[] f29488f;

    public byte[] f29489g;

    public b f29490h;

    public C3376a(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this(i10, bArr, bArr2, bArr3, bArr4, bArr5, null);
    }

    public static C3376a z(Object obj) {
        if (obj instanceof C3376a) {
            return (C3376a) obj;
        }
        if (obj != null) {
            return new C3376a(E.G(obj));
        }
        return null;
    }

    public b A() {
        return this.f29490h;
    }

    public byte[] B() {
        return org.bouncycastle.util.a.p(this.f29489g);
    }

    public int C() {
        return this.f29484b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f29484b));
        c14518h.a(new C0(this.f29485c));
        c14518h.a(new C0(this.f29486d));
        c14518h.a(new C0(this.f29487e));
        c14518h.a(new C0(this.f29488f));
        c14518h.a(new C0(this.f29489g));
        b bVar = this.f29490h;
        if (bVar != null) {
            c14518h.a(new b(bVar.v()));
        }
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f29488f);
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f29486d);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f29485c);
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f29487e);
    }

    public C3376a(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, b bVar) {
        this.f29484b = i10;
        if (i10 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f29485c = org.bouncycastle.util.a.p(bArr);
        this.f29486d = org.bouncycastle.util.a.p(bArr2);
        this.f29487e = org.bouncycastle.util.a.p(bArr3);
        this.f29488f = org.bouncycastle.util.a.p(bArr4);
        this.f29489g = org.bouncycastle.util.a.p(bArr5);
        this.f29490h = bVar;
    }

    public C3376a(E e10) {
        int O10 = C14539s.F(e10.I(0)).O();
        this.f29484b = O10;
        if (O10 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f29485c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
        this.f29486d = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(2)).H());
        this.f29487e = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(3)).H());
        this.f29488f = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(4)).H());
        this.f29489g = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(5)).H());
        if (e10.size() == 7) {
            this.f29490h = b.u(e10.I(6));
        }
    }
}
