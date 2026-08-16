package th;

import java.math.BigInteger;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;

public class L extends AbstractC14545v {

    public C14539s f117523b;

    public F f117524c;

    public AbstractC14508c f117525d;

    public L(oh.E e10) {
        InterfaceC14516g I10;
        this.f117523b = C14539s.F(e10.I(0));
        this.f117524c = null;
        this.f117525d = null;
        if (e10.size() > 2) {
            this.f117524c = F.u(e10.I(1));
            I10 = e10.I(2);
        } else {
            if (e10.size() <= 1) {
                return;
            }
            I10 = e10.I(1);
            if (!(I10 instanceof AbstractC14508c)) {
                this.f117524c = F.u(I10);
                return;
            }
        }
        this.f117525d = AbstractC14508c.H(I10);
    }

    public static L v(Object obj) {
        if (obj instanceof L) {
            return (L) obj;
        }
        if (obj != null) {
            return new L(oh.E.G(obj));
        }
        return null;
    }

    public static L w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f117523b);
        F f10 = this.f117524c;
        if (f10 != null) {
            c14518h.a(f10);
        }
        AbstractC14508c abstractC14508c = this.f117525d;
        if (abstractC14508c != null) {
            c14518h.a(abstractC14508c);
        }
        return new G0(c14518h);
    }

    public AbstractC14508c u() {
        return this.f117525d;
    }

    public BigInteger x() {
        return this.f117523b.I();
    }

    public F y() {
        return this.f117524c;
    }

    public L(K k10) {
        this.f117523b = C14539s.F(k10.r());
    }

    public L(K k10, F f10) {
        this.f117523b = C14539s.F(k10.r());
        this.f117524c = f10;
    }

    public L(K k10, F f10, E e10) {
        this.f117523b = C14539s.F(k10.r());
        this.f117524c = f10;
        this.f117525d = e10;
    }
}
