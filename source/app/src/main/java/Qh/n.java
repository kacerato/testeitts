package qh;

import hi.C13486b;
import hi.C13505q;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14538r0;
import oh.E;
import oh.G0;
import oh.K0;
import oh.M;

public class n extends AbstractC14545v {

    public final C13486b f108174b;

    public final E f108175c;

    public final AbstractC14508c f108176d;

    public n(C13486b c13486b, byte[] bArr) {
        this.f108174b = c13486b;
        this.f108175c = null;
        this.f108176d = new C14538r0(org.bouncycastle.util.a.p(bArr));
    }

    public static n v(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f108174b);
        E e10 = this.f108175c;
        if (e10 != null) {
            c14518h.a(new K0(0, e10));
        }
        c14518h.a(this.f108176d);
        return new G0(c14518h);
    }

    public C13505q[] u() {
        E e10 = this.f108175c;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        C13505q[] c13505qArr = new C13505q[size];
        for (int i10 = 0; i10 != size; i10++) {
            c13505qArr[i10] = C13505q.v(this.f108175c.I(i10));
        }
        return c13505qArr;
    }

    public AbstractC14508c x() {
        return new C14538r0(this.f108176d.F(), this.f108176d.n());
    }

    public C13486b y() {
        return this.f108174b;
    }

    public n(C13486b c13486b, C13505q[] c13505qArr, byte[] bArr) {
        this.f108174b = c13486b;
        this.f108175c = new G0(c13505qArr);
        this.f108176d = new C14538r0(org.bouncycastle.util.a.p(bArr));
    }

    public n(E e10) {
        this.f108174b = C13486b.v(e10.I(0));
        int i10 = 1;
        if (e10.I(1) instanceof M) {
            this.f108175c = E.G(M.R(e10.I(1)).M(true, 16));
            i10 = 2;
        } else {
            this.f108175c = null;
        }
        this.f108176d = AbstractC14508c.H(e10.I(i10));
    }
}
