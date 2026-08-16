package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class A extends AbstractC14545v {

    public final byte[] f29482b;

    public final byte[] f29483c;

    public A(E e10) {
        if (!C14539s.F(e10.I(0)).J(0)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.f29482b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
        this.f29483c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(2)).H());
    }

    public static A u(Object obj) {
        if (obj instanceof A) {
            return (A) obj;
        }
        if (obj != null) {
            return new A(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(0L));
        c14518h.a(new C0(this.f29482b));
        c14518h.a(new C0(this.f29483c));
        return new G0(c14518h);
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f29482b);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f29483c);
    }

    public A(byte[] bArr, byte[] bArr2) {
        this.f29482b = org.bouncycastle.util.a.p(bArr);
        this.f29483c = org.bouncycastle.util.a.p(bArr2);
    }
}
