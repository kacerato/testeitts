package ci;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class C4193d extends AbstractC14545v {

    public E f34836b;

    public C4193d(C4192c c4192c) {
        this.f34836b = new G0(c4192c);
    }

    public static C4193d w(Object obj) {
        if (obj instanceof C4193d) {
            return (C4193d) obj;
        }
        if (obj != null) {
            return new C4193d(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f34836b;
    }

    public int size() {
        return this.f34836b.size();
    }

    public C4193d u(C4192c c4192c) {
        C14518h c14518h = new C14518h(this.f34836b.size() + 1);
        for (int i10 = 0; i10 != this.f34836b.size(); i10++) {
            c14518h.a(this.f34836b.I(i10));
        }
        c14518h.a(c4192c);
        return new C4193d(new G0(c14518h));
    }

    public C4192c[] v() {
        int size = this.f34836b.size();
        C4192c[] c4192cArr = new C4192c[size];
        for (int i10 = 0; i10 != size; i10++) {
            c4192cArr[i10] = C4192c.w(this.f34836b.I(i10));
        }
        return c4192cArr;
    }

    public C4193d(E e10) {
        C14518h c14518h = new C14518h(e10.size());
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            c14518h.a(C4192c.w(J10.nextElement()));
        }
        this.f34836b = new G0(c14518h);
    }

    public C4193d(C4192c[] c4192cArr) {
        this.f34836b = new G0(c4192cArr);
    }
}
