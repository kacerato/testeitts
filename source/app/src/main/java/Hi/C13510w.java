package hi;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.G0;

public class C13510w extends AbstractC14545v {

    public byte[] f90961b;

    public C13486b f90962c;

    public C13510w(C13486b c13486b, byte[] bArr) {
        this.f90961b = org.bouncycastle.util.a.p(bArr);
        this.f90962c = c13486b;
    }

    public static C13510w w(Object obj) {
        if (obj instanceof C13510w) {
            return (C13510w) obj;
        }
        if (obj != null) {
            return new C13510w(oh.E.G(obj));
        }
        return null;
    }

    public static C13510w x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90962c);
        c14518h.a(new oh.C0(this.f90961b));
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f90962c;
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f90961b);
    }

    public C13510w(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f90962c = C13486b.v(J10.nextElement());
        this.f90961b = AbstractC14551y.F(J10.nextElement()).H();
    }
}
