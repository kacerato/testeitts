package th;

import hi.C13486b;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14538r0;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C15424A extends AbstractC14545v {

    public final C13486b f117395b;

    public final wh.c f117396c;

    public final AbstractC14508c f117397d;

    public C15424A(C13486b c13486b, wh.c cVar, C14538r0 c14538r0) {
        this.f117395b = c13486b;
        this.f117396c = cVar;
        this.f117397d = c14538r0;
    }

    private void u(C14518h c14518h, int i10, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(new K0(true, i10, interfaceC14516g));
        }
    }

    public static C15424A z(Object obj) {
        if (obj instanceof C15424A) {
            return (C15424A) obj;
        }
        if (obj != null) {
            return new C15424A(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        u(c14518h, 0, this.f117395b);
        u(c14518h, 1, this.f117396c);
        c14518h.a(this.f117397d);
        return new G0(c14518h);
    }

    public wh.c v() {
        return this.f117396c;
    }

    public C13486b x() {
        return this.f117395b;
    }

    public AbstractC14508c y() {
        return this.f117397d;
    }

    public C15424A(C13486b c13486b, wh.c cVar, byte[] bArr) {
        this(c13486b, cVar, new C14538r0(bArr));
    }

    public C15424A(oh.E e10) {
        int size = e10.size();
        int i10 = size - 1;
        this.f117397d = AbstractC14508c.H(e10.I(i10));
        C13486b c13486b = null;
        wh.c cVar = null;
        for (int i11 = size - 2; i11 >= 0; i11--) {
            oh.M m10 = (oh.M) e10.I(i11);
            if (m10.p(0)) {
                c13486b = C13486b.w(m10, true);
            } else {
                if (!m10.p(1)) {
                    throw new IllegalArgumentException("unknown tag " + oh.V.y(m10));
                }
                cVar = wh.c.v(m10, true);
            }
        }
        this.f117395b = c13486b;
        this.f117396c = cVar;
    }
}
