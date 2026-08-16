package Ih;

import hi.C13505q;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G;
import oh.G0;
import oh.I0;

public class a extends AbstractC14545v {

    public C14539s f9429b;

    public C13505q[] f9430c;

    public a(E e10) {
        this.f9429b = new C14539s(0L);
        if (e10 == null || e10.size() == 0) {
            throw new IllegalArgumentException("null or empty sequence passed.");
        }
        if (e10.size() != 2) {
            throw new IllegalArgumentException("Incorrect sequence size: " + e10.size());
        }
        int i10 = 0;
        this.f9429b = C14539s.F(e10.I(0));
        G F10 = G.F(e10.I(1));
        this.f9430c = new C13505q[F10.size()];
        while (true) {
            C13505q[] c13505qArr = this.f9430c;
            if (i10 >= c13505qArr.length) {
                return;
            }
            c13505qArr[i10] = C13505q.v(F10.H(i10));
            i10++;
        }
    }

    public static a w(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f9429b);
        c14518h.a(new I0(this.f9430c));
        return new G0(c14518h);
    }

    public final C13505q[] u(C13505q[] c13505qArr) {
        int length = c13505qArr.length;
        C13505q[] c13505qArr2 = new C13505q[length];
        for (int i10 = 0; i10 != length; i10++) {
            c13505qArr2[i10] = c13505qArr[i10];
        }
        return c13505qArr2;
    }

    public C13505q[] v() {
        return u(this.f9430c);
    }

    public int x() {
        return this.f9429b.O();
    }

    public a(C13505q[] c13505qArr) {
        this.f9429b = new C14539s(0L);
        this.f9430c = u(c13505qArr);
    }
}
