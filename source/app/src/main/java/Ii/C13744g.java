package ii;

import hi.C13481E;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;

public class C13744g extends AbstractC14545v {

    public C14549x f92295b;

    public C13481E[] f92296c;

    public C13744g(C14549x c14549x) {
        this.f92295b = c14549x;
        this.f92296c = null;
    }

    public static C13481E[] u(C13481E[] c13481eArr) {
        if (c13481eArr == null) {
            return null;
        }
        C13481E[] c13481eArr2 = new C13481E[c13481eArr.length];
        System.arraycopy(c13481eArr, 0, c13481eArr2, 0, c13481eArr.length);
        return c13481eArr2;
    }

    public static C13744g v(Object obj) {
        if (obj instanceof C13744g) {
            return (C13744g) obj;
        }
        if (obj != null) {
            return new C13744g(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        C14549x c14549x = this.f92295b;
        if (c14549x != null) {
            c14518h.a(c14549x);
        }
        if (this.f92296c != null) {
            c14518h.a(new G0(this.f92296c));
        }
        return new G0(c14518h);
    }

    public C13481E[] x() {
        return u(this.f92296c);
    }

    public C14549x y() {
        return this.f92295b;
    }

    public C13744g(C14549x c14549x, C13481E[] c13481eArr) {
        this.f92295b = c14549x;
        this.f92296c = u(c13481eArr);
    }

    public C13744g(E e10) {
        Enumeration J10 = e10.J();
        if (e10.size() < 1) {
            throw new IllegalArgumentException("no objects in SemanticsInformation");
        }
        Object nextElement = J10.nextElement();
        if (nextElement instanceof C14549x) {
            this.f92295b = C14549x.K(nextElement);
            nextElement = J10.hasMoreElements() ? J10.nextElement() : null;
        }
        if (nextElement != null) {
            E G10 = E.G(nextElement);
            this.f92296c = new C13481E[G10.size()];
            for (int i10 = 0; i10 < G10.size(); i10++) {
                this.f92296c[i10] = C13481E.v(G10.I(i10));
            }
        }
    }

    public C13744g(C13481E[] c13481eArr) {
        this.f92295b = null;
        this.f92296c = u(c13481eArr);
    }
}
