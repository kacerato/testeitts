package li;

import Qk.InterfaceC3013f;
import hi.C13478B;
import hi.C13479C;
import hi.C13480D;
import hi.C13492e;
import hi.C13495g;
import hi.r0;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Date;
import java.util.Enumeration;
import java.util.Locale;
import oh.C14530n;
import oh.C14539s;
import oh.C14549x;
import oh.I0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.CertIOException;

public class C14150l {

    public r0 f96483a;

    public C13480D f96484b;

    public C14150l(C14139a c14139a, C14140b c14140b, BigInteger bigInteger, Date date, Date date2) {
        this.f96483a = new r0();
        this.f96484b = new C13480D();
        this.f96483a.g(c14139a.f96463b);
        this.f96483a.h(C13492e.u(c14140b.f96464b));
        this.f96483a.j(new C14539s(bigInteger));
        this.f96483a.l(new C14530n(date));
        this.f96483a.d(new C14530n(date2));
    }

    public C14150l a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f96483a.a(new C13495g(c14549x, new I0(interfaceC14516g)));
        return this;
    }

    public C14150l b(C14549x c14549x, InterfaceC14516g[] interfaceC14516gArr) {
        this.f96483a.a(new C13495g(c14549x, new I0(interfaceC14516gArr)));
        return this;
    }

    public C14150l c(C13478B c13478b) throws CertIOException {
        this.f96484b.a(c13478b);
        return this;
    }

    public C14150l d(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws CertIOException {
        C14141c.a(this.f96484b, c14549x, z10, interfaceC14516g);
        return this;
    }

    public C14150l e(C14549x c14549x, boolean z10, byte[] bArr) throws CertIOException {
        this.f96484b.d(c14549x, z10, bArr);
        return this;
    }

    public C14143e f(InterfaceC3013f interfaceC3013f) {
        this.f96483a.k(interfaceC3013f.a());
        if (!this.f96484b.h()) {
            this.f96483a.e(this.f96484b.e());
        }
        return C14141c.h(interfaceC3013f, this.f96483a.c());
    }

    public final C13478B g(C14549x c14549x) {
        if (this.f96484b.h()) {
            return null;
        }
        return this.f96484b.e().x(c14549x);
    }

    public C13478B h(C14549x c14549x) {
        return g(c14549x);
    }

    public boolean i(C14549x c14549x) {
        return g(c14549x) != null;
    }

    public C14150l j(C14549x c14549x) {
        this.f96484b = C14141c.d(this.f96484b, c14549x);
        return this;
    }

    public C14150l k(C13478B c13478b) throws CertIOException {
        this.f96484b = C14141c.e(this.f96484b, c13478b);
        return this;
    }

    public C14150l l(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws CertIOException {
        try {
            this.f96484b = C14141c.e(this.f96484b, new C13478B(c14549x, z10, interfaceC14516g.r().s(InterfaceC14520i.f98892a)));
            return this;
        } catch (IOException e10) {
            throw new CertIOException("cannot encode extension: " + e10.getMessage(), e10);
        }
    }

    public C14150l m(C14549x c14549x, boolean z10, byte[] bArr) throws CertIOException {
        this.f96484b = C14141c.e(this.f96484b, new C13478B(c14549x, z10, bArr));
        return this;
    }

    public void n(boolean[] zArr) {
        this.f96483a.i(C14141c.c(zArr));
    }

    public C14150l(C14139a c14139a, C14140b c14140b, BigInteger bigInteger, Date date, Date date2, Locale locale) {
        this.f96483a = new r0();
        this.f96484b = new C13480D();
        this.f96483a.g(c14139a.f96463b);
        this.f96483a.h(C13492e.u(c14140b.f96464b));
        this.f96483a.j(new C14539s(bigInteger));
        this.f96483a.l(new C14530n(date, locale));
        this.f96483a.d(new C14530n(date2, locale));
    }

    public C14150l(C14143e c14143e) {
        r0 r0Var = new r0();
        this.f96483a = r0Var;
        r0Var.j(new C14539s(c14143e.m()));
        this.f96483a.h(C13492e.u(c14143e.h().f96464b));
        this.f96483a.l(new C14530n(c14143e.l()));
        this.f96483a.d(new C14530n(c14143e.k()));
        this.f96483a.g(c14143e.g().f96463b);
        boolean[] i10 = c14143e.i();
        if (i10 != null) {
            this.f96483a.i(C14141c.c(i10));
        }
        C13495g[] a10 = c14143e.a();
        for (int i11 = 0; i11 != a10.length; i11++) {
            this.f96483a.a(a10[i11]);
        }
        this.f96484b = new C13480D();
        C13479C f10 = c14143e.f();
        Enumeration F10 = f10.F();
        while (F10.hasMoreElements()) {
            this.f96484b.a(f10.x((C14549x) F10.nextElement()));
        }
    }
}
