package qh;

import hi.C13481E;
import hi.C13482F;
import hi.C13486b;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14538r0;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class C15104e extends AbstractC14545v {

    public final C13482F f108143b;

    public final C13486b f108144c;

    public final byte[] f108145d;

    public C15104e(C13481E c13481e, C13486b c13486b, byte[] bArr) {
        this.f108143b = new C13482F(c13481e);
        this.f108144c = c13486b;
        this.f108145d = org.bouncycastle.util.a.p(bArr);
    }

    public static C15104e y(Object obj) {
        if (obj instanceof C15104e) {
            return (C15104e) obj;
        }
        if (obj != null) {
            return new C15104e(E.G(obj));
        }
        return null;
    }

    public C13481E[] A() {
        return this.f108143b.y();
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f108143b);
        c14518h.a(this.f108144c);
        c14518h.a(new C0(this.f108145d));
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f108144c;
    }

    public AbstractC14508c v() {
        return new C14538r0(this.f108145d);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f108145d);
    }

    public C13481E z() {
        return this.f108143b.y()[0];
    }

    public C15104e(E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("unknown sequence");
        }
        this.f108143b = C13482F.w(e10.I(0));
        this.f108144c = C13486b.v(e10.I(1));
        boolean z10 = e10.I(2) instanceof AbstractC14508c;
        InterfaceC14516g I10 = e10.I(2);
        if (z10) {
            this.f108145d = AbstractC14508c.H(I10).J();
        } else {
            this.f108145d = AbstractC14551y.F(I10).H();
        }
    }
}
