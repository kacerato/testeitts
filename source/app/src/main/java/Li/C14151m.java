package li;

import Qk.InterfaceC3013f;
import fi.C13228d;
import hi.C13478B;
import hi.C13479C;
import hi.C13480D;
import hi.C13486b;
import hi.i0;
import hi.o0;
import hi.r;
import hi.t0;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Date;
import java.util.Enumeration;
import java.util.Locale;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14530n;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.CertIOException;

public class C14151m {

    public t0 f96485a;

    public C13480D f96486b;

    public C14151m(C13228d c13228d, o0 o0Var) {
        this.f96485a = new t0();
        this.f96486b = new C13480D();
        this.f96485a.n(c13228d);
        this.f96485a.s(o0Var);
    }

    public static r k(i0 i0Var, C13486b c13486b, byte[] bArr) {
        C14518h c14518h = new C14518h();
        c14518h.a(i0Var);
        c14518h.a(c13486b);
        c14518h.a(new C14538r0(bArr));
        return r.u(new G0(c14518h));
    }

    public static C14145g l(InterfaceC3013f interfaceC3013f, i0 i0Var) {
        try {
            return new C14145g(k(i0Var, interfaceC3013f.a(), m(interfaceC3013f, i0Var)));
        } catch (IOException e10) {
            throw org.bouncycastle.util.h.b("cannot produce certificate signature", e10);
        }
    }

    public static byte[] m(InterfaceC3013f interfaceC3013f, AbstractC14545v abstractC14545v) throws IOException {
        OutputStream outputStream = interfaceC3013f.getOutputStream();
        abstractC14545v.f(outputStream, InterfaceC14520i.f98892a);
        outputStream.close();
        return interfaceC3013f.getSignature();
    }

    public C14151m a(C14145g c14145g) {
        i0 D10 = c14145g.r().D();
        if (D10 != null) {
            Enumeration z10 = D10.z();
            while (z10.hasMoreElements()) {
                this.f96485a.e(E.G(((InterfaceC14516g) z10.nextElement()).r()));
            }
        }
        return this;
    }

    public C14151m b(BigInteger bigInteger, Date date, int i10) {
        this.f96485a.a(new C14539s(bigInteger), new o0(date), i10);
        return this;
    }

    public C14151m c(BigInteger bigInteger, Date date, int i10, Date date2) {
        this.f96485a.b(new C14539s(bigInteger), new o0(date), i10, new C14530n(date2));
        return this;
    }

    public C14151m d(BigInteger bigInteger, Date date, C13479C c13479c) {
        this.f96485a.c(new C14539s(bigInteger), new o0(date), c13479c);
        return this;
    }

    public C14151m e(C13478B c13478b) throws CertIOException {
        this.f96486b.a(c13478b);
        return this;
    }

    public C14151m f(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws CertIOException {
        C14141c.a(this.f96486b, c14549x, z10, interfaceC14516g);
        return this;
    }

    public C14151m g(C14549x c14549x, boolean z10, byte[] bArr) throws CertIOException {
        this.f96486b.d(c14549x, z10, bArr);
        return this;
    }

    public C14145g h(InterfaceC3013f interfaceC3013f) {
        this.f96485a.r(interfaceC3013f.a());
        if (!this.f96486b.h()) {
            this.f96485a.l(this.f96486b.e());
        }
        return l(interfaceC3013f, this.f96485a.i());
    }

    public C14145g i(InterfaceC3013f interfaceC3013f, boolean z10, InterfaceC3013f interfaceC3013f2) {
        this.f96485a.r(null);
        try {
            this.f96486b.c(C13478B.f90526L, z10, interfaceC3013f2.a());
            this.f96485a.l(this.f96486b.e());
            try {
                this.f96486b.c(C13478B.f90527M, z10, new C14538r0(m(interfaceC3013f2, this.f96485a.h())));
                this.f96485a.r(interfaceC3013f.a());
                this.f96485a.l(this.f96486b.e());
                i0 i10 = this.f96485a.i();
                return new C14145g(k(i10, interfaceC3013f.a(), m(interfaceC3013f, i10)));
            } catch (IOException e10) {
                throw org.bouncycastle.util.h.a("cannot produce certificate signature", e10);
            }
        } catch (IOException e11) {
            throw org.bouncycastle.util.h.b("cannot add altSignatureAlgorithm extension", e11);
        }
    }

    public final C13478B j(C14549x c14549x) {
        if (this.f96486b.h()) {
            return null;
        }
        return this.f96486b.e().x(c14549x);
    }

    public C13478B n(C14549x c14549x) {
        return j(c14549x);
    }

    public boolean o(C14549x c14549x) {
        return j(c14549x) != null;
    }

    public C14151m p(C14549x c14549x) {
        this.f96486b = C14141c.d(this.f96486b, c14549x);
        return this;
    }

    public C14151m q(C13478B c13478b) throws CertIOException {
        this.f96486b = C14141c.e(this.f96486b, c13478b);
        return this;
    }

    public C14151m r(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws CertIOException {
        try {
            this.f96486b = C14141c.e(this.f96486b, new C13478B(c14549x, z10, interfaceC14516g.r().s(InterfaceC14520i.f98892a)));
            return this;
        } catch (IOException e10) {
            throw new CertIOException("cannot encode extension: " + e10.getMessage(), e10);
        }
    }

    public C14151m s(C14549x c14549x, boolean z10, byte[] bArr) throws CertIOException {
        this.f96486b = C14141c.e(this.f96486b, new C13478B(c14549x, z10, bArr));
        return this;
    }

    public C14151m t(o0 o0Var) {
        this.f96485a.p(o0Var);
        return this;
    }

    public C14151m u(Date date) {
        return t(new o0(date));
    }

    public C14151m v(Date date, Locale locale) {
        return t(new o0(date, locale));
    }

    public C14151m w(o0 o0Var) {
        this.f96485a.s(o0Var);
        return this;
    }

    public C14151m x(Date date) {
        return w(new o0(date));
    }

    public C14151m y(Date date, Locale locale) {
        return w(new o0(date, locale));
    }

    public C14151m(C13228d c13228d, Date date) {
        this.f96485a = new t0();
        this.f96486b = new C13480D();
        this.f96485a.n(c13228d);
        this.f96485a.s(new o0(date));
    }

    public C14151m(C13228d c13228d, Date date, Locale locale) {
        this.f96485a = new t0();
        this.f96486b = new C13480D();
        this.f96485a.n(c13228d);
        this.f96485a.s(new o0(date, locale));
    }

    public C14151m(C14145g c14145g) {
        t0 t0Var = new t0();
        this.f96485a = t0Var;
        t0Var.n(c14145g.e());
        this.f96485a.s(new o0(c14145g.j()));
        Date f10 = c14145g.f();
        if (f10 != null) {
            this.f96485a.p(new o0(f10));
        }
        a(c14145g);
        this.f96486b = new C13480D();
        C13479C d10 = c14145g.d();
        if (d10 != null) {
            Enumeration F10 = d10.F();
            while (F10.hasMoreElements()) {
                C14549x c14549x = (C14549x) F10.nextElement();
                if (!C13478B.f90526L.A(c14549x) && !C13478B.f90527M.A(c14549x)) {
                    this.f96486b.a(d10.x(c14549x));
                }
            }
        }
    }
}
