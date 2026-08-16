package ji;

import fi.C13226b;
import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.E;
import oh.F0;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class C13861b extends AbstractC14545v {

    public C13860a f93768b;

    public BigInteger f93769c;

    public C14530n f93770d;

    public C13226b f93771e;

    public String f93772f;

    public C13226b f93773g;

    public C13861b(C13860a c13860a, BigInteger bigInteger, C14530n c14530n, C13226b c13226b, String str, C13226b c13226b2) {
        this.f93768b = c13860a;
        this.f93770d = c14530n;
        this.f93772f = str;
        this.f93769c = bigInteger;
        this.f93773g = c13226b2;
        this.f93771e = c13226b;
    }

    public static C13861b w(Object obj) {
        if (obj == null || (obj instanceof C13861b)) {
            return (C13861b) obj;
        }
        if (obj instanceof E) {
            return new C13861b((E) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public C13226b A() {
        return this.f93773g;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(6);
        c14518h.a(this.f93768b);
        if (this.f93769c != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) new C14539s(this.f93769c)));
        }
        C14530n c14530n = this.f93770d;
        if (c14530n != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c14530n));
        }
        C13226b c13226b = this.f93771e;
        if (c13226b != null) {
            c14518h.a(new K0(true, 2, (InterfaceC14516g) c13226b));
        }
        if (this.f93772f != null) {
            c14518h.a(new K0(false, 3, (InterfaceC14516g) new F0(this.f93772f, true)));
        }
        C13226b c13226b2 = this.f93773g;
        if (c13226b2 != null) {
            c14518h.a(new K0(true, 4, (InterfaceC14516g) c13226b2));
        }
        return new G0(c14518h);
    }

    public C14530n u() {
        return this.f93770d;
    }

    public String v() {
        return this.f93772f;
    }

    public BigInteger x() {
        return this.f93769c;
    }

    public C13860a y() {
        return this.f93768b;
    }

    public C13226b z() {
        return this.f93771e;
    }

    public C13861b(E e10) {
        if (e10.size() < 1) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        this.f93768b = C13860a.v(J10.nextElement());
        while (J10.hasMoreElements()) {
            M R10 = M.R(J10.nextElement());
            int g10 = R10.g();
            if (g10 == 0) {
                this.f93769c = C14539s.G(R10, false).I();
            } else if (g10 == 1) {
                this.f93770d = C14530n.K(R10, false);
            } else if (g10 == 2) {
                this.f93771e = C13226b.v(R10, true);
            } else if (g10 == 3) {
                this.f93772f = C.G(R10, false).getString();
            } else {
                if (g10 != 4) {
                    throw new IllegalArgumentException("Bad tag number: " + R10.g());
                }
                this.f93773g = C13226b.v(R10, true);
            }
        }
    }
}
