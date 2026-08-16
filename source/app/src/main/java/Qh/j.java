package qh;

import hi.C13486b;
import java.math.BigInteger;
import java.util.Date;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.C14548w0;
import oh.E;
import oh.G0;
import oh.M0;
import oh.Q;

public class j extends AbstractC14545v {

    public final BigInteger f108159b;

    public final C13486b f108160c;

    public final C14530n f108161d;

    public final C14530n f108162e;

    public final h f108163f;

    public final String f108164g;

    public j(C13486b c13486b, Date date, Date date2, h hVar, String str) {
        this.f108159b = BigInteger.valueOf(1L);
        this.f108160c = c13486b;
        this.f108161d = new C14548w0(date);
        this.f108162e = new C14548w0(date2);
        this.f108163f = hVar;
        this.f108164g = str;
    }

    public static j w(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(E.G(obj));
        }
        return null;
    }

    public BigInteger A() {
        return this.f108159b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(6);
        c14518h.a(new C14539s(this.f108159b));
        c14518h.a(this.f108160c);
        c14518h.a(this.f108161d);
        c14518h.a(this.f108162e);
        c14518h.a(this.f108163f);
        if (this.f108164g != null) {
            c14518h.a(new M0(this.f108164g));
        }
        return new G0(c14518h);
    }

    public String u() {
        return this.f108164g;
    }

    public C14530n v() {
        return this.f108161d;
    }

    public C13486b x() {
        return this.f108160c;
    }

    public C14530n y() {
        return this.f108162e;
    }

    public h z() {
        return this.f108163f;
    }

    public j(E e10) {
        this.f108159b = C14539s.F(e10.I(0)).I();
        this.f108160c = C13486b.v(e10.I(1));
        this.f108161d = C14530n.J(e10.I(2));
        this.f108162e = C14530n.J(e10.I(3));
        this.f108163f = h.u(e10.I(4));
        this.f108164g = e10.size() == 6 ? Q.F(e10.I(5)).getString() : null;
    }
}
