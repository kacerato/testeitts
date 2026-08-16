package Ch;

import fi.C13226b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import oh.M0;
import oh.Q;

public class y extends AbstractC14545v {

    public C13226b f4376b;

    public C13226b f4377c;

    public E f4378d;

    public y(C13226b c13226b, C13226b c13226b2, E e10) {
        if (e10 != null && e10.size() > 6) {
            throw new IllegalArgumentException("postal address must contain less than 6 strings");
        }
        this.f4376b = c13226b;
        this.f4377c = c13226b2;
        this.f4378d = e10;
    }

    public static y w(Object obj) {
        return (obj == null || (obj instanceof y)) ? (y) obj : new y(E.G(obj));
    }

    public E A() {
        return this.f4378d;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        C13226b c13226b = this.f4376b;
        if (c13226b != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c13226b));
        }
        C13226b c13226b2 = this.f4377c;
        if (c13226b2 != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) c13226b2));
        }
        E e10 = this.f4378d;
        if (e10 != null) {
            c14518h.a(new K0(true, 2, (InterfaceC14516g) e10));
        }
        return new G0(c14518h);
    }

    public C13226b u() {
        return this.f4376b;
    }

    public M0 v() {
        if (this.f4376b == null) {
            return null;
        }
        return new M0(u().getString());
    }

    public C13226b x() {
        return this.f4377c;
    }

    public M0 y() {
        if (this.f4377c == null) {
            return null;
        }
        return new M0(x().getString());
    }

    public C13226b[] z() {
        E e10 = this.f4378d;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        C13226b[] c13226bArr = new C13226b[size];
        for (int i10 = 0; i10 != size; i10++) {
            c13226bArr[i10] = C13226b.u(this.f4378d.I(i10));
        }
        return c13226bArr;
    }

    public y(C13226b c13226b, C13226b c13226b2, C13226b[] c13226bArr) {
        this(c13226b, c13226b2, new G0(c13226bArr));
    }

    public y(E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            M S10 = M.S(J10.nextElement(), 128);
            int g10 = S10.g();
            if (g10 == 0) {
                this.f4376b = C13226b.v(S10, true);
            } else if (g10 == 1) {
                this.f4377c = C13226b.v(S10, true);
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("illegal tag");
                }
                this.f4378d = S10.X() ? E.H(S10, true) : E.H(S10, false);
                E e11 = this.f4378d;
                if (e11 != null && e11.size() > 6) {
                    throw new IllegalArgumentException("postal address must contain less than 6 strings");
                }
            }
        }
    }

    public y(Q q10, Q q11, E e10) {
        this(C13226b.u(q10), C13226b.u(q11), e10);
    }
}
