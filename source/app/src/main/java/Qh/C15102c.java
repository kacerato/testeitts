package qh;

import hi.C13505q;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class C15102c extends AbstractC14545v {

    public final Xh.j f108139b;

    public final C13505q[] f108140c;

    public C15102c(Xh.j jVar, C13505q[] c13505qArr) {
        this.f108139b = jVar;
        C13505q[] c13505qArr2 = new C13505q[c13505qArr.length];
        this.f108140c = c13505qArr2;
        System.arraycopy(c13505qArr, 0, c13505qArr2, 0, c13505qArr.length);
    }

    public static C15102c w(Object obj) {
        if (obj instanceof C15102c) {
            return (C15102c) obj;
        }
        if (obj != null) {
            return new C15102c(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f108139b);
        c14518h.a(new G0(this.f108140c));
        return new G0(c14518h);
    }

    public C13505q[] u() {
        C13505q[] c13505qArr = this.f108140c;
        C13505q[] c13505qArr2 = new C13505q[c13505qArr.length];
        System.arraycopy(c13505qArr, 0, c13505qArr2, 0, c13505qArr.length);
        return c13505qArr2;
    }

    public Xh.j v() {
        return this.f108139b;
    }

    public C15102c(E e10) {
        int i10 = 0;
        this.f108139b = Xh.j.w(e10.I(0));
        E G10 = E.G(e10.I(1));
        this.f108140c = new C13505q[G10.size()];
        while (true) {
            C13505q[] c13505qArr = this.f108140c;
            if (i10 == c13505qArr.length) {
                return;
            }
            c13505qArr[i10] = C13505q.v(G10.I(i10));
            i10++;
        }
    }
}
