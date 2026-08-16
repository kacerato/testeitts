package li;

import Qk.InterfaceC3013f;
import fi.C13228d;
import hi.C13478B;
import hi.C13479C;
import hi.C13480D;
import hi.C13486b;
import hi.C13505q;
import hi.C13509v;
import hi.h0;
import hi.j0;
import hi.o0;
import hi.u0;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Date;
import java.util.Enumeration;
import java.util.Locale;
import oh.A0;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.CertIOException;

public class C14152n {

    public u0 f96487a;

    public C13480D f96488b;

    public C14152n(C13228d c13228d, BigInteger bigInteger, o0 o0Var, o0 o0Var2, C13228d c13228d2, h0 h0Var) {
        u0 u0Var = new u0();
        this.f96487a = u0Var;
        u0Var.k(new C14539s(bigInteger));
        this.f96487a.h(c13228d);
        this.f96487a.m(o0Var);
        this.f96487a.d(o0Var2);
        this.f96487a.o(c13228d2);
        this.f96487a.q(h0Var);
        this.f96488b = new C13480D();
    }

    public static C14538r0 d(boolean[] zArr) {
        byte[] bArr = new byte[(zArr.length + 7) / 8];
        for (int i10 = 0; i10 != zArr.length; i10++) {
            int i11 = i10 / 8;
            bArr[i11] = (byte) (bArr[i11] | (zArr[i10] ? 1 << (7 - (i10 % 8)) : 0));
        }
        int length = zArr.length % 8;
        return length == 0 ? new C14538r0(bArr) : new C14538r0(bArr, 8 - length);
    }

    public static byte[] i(InterfaceC3013f interfaceC3013f, AbstractC14545v abstractC14545v) throws IOException {
        OutputStream outputStream = interfaceC3013f.getOutputStream();
        abstractC14545v.f(outputStream, InterfaceC14520i.f98892a);
        outputStream.close();
        return interfaceC3013f.getSignature();
    }

    public static C13505q j(j0 j0Var, C13486b c13486b, byte[] bArr) {
        C14518h c14518h = new C14518h();
        c14518h.a(j0Var);
        c14518h.a(c13486b);
        c14518h.a(new C14538r0(bArr));
        return C13505q.v(new G0(c14518h));
    }

    public C14152n a(C13478B c13478b) throws CertIOException {
        this.f96488b.a(c13478b);
        return this;
    }

    public C14152n b(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws CertIOException {
        try {
            this.f96488b.c(c14549x, z10, interfaceC14516g);
            return this;
        } catch (IOException e10) {
            throw new CertIOException("cannot encode extension: " + e10.getMessage(), e10);
        }
    }

    public C14152n c(C14549x c14549x, boolean z10, byte[] bArr) throws CertIOException {
        this.f96488b.d(c14549x, z10, bArr);
        return this;
    }

    public C14146h e(InterfaceC3013f interfaceC3013f) {
        this.f96487a.l(interfaceC3013f.a());
        if (!this.f96488b.h()) {
            C13480D c13480d = this.f96488b;
            C14549x c14549x = C13478B.f90528N;
            if (c13480d.g(c14549x)) {
                C13478B f10 = this.f96488b.f(c14549x);
                try {
                    this.f96488b.k(c14549x, f10.B(), C13509v.y(f10.A()).G(this.f96487a.b(), this.f96488b.e()));
                } catch (IOException e10) {
                    throw new IllegalStateException("unable to replace deltaCertificateDescriptor: " + e10.getMessage());
                }
            }
            this.f96487a.f(this.f96488b.e());
        }
        try {
            j0 b10 = this.f96487a.b();
            return new C14146h(j(b10, interfaceC3013f.a(), i(interfaceC3013f, b10)));
        } catch (IOException e11) {
            throw org.bouncycastle.util.h.a("cannot produce certificate signature", e11);
        }
    }

    public C14146h f(InterfaceC3013f interfaceC3013f, boolean z10, InterfaceC3013f interfaceC3013f2) {
        try {
            this.f96488b.c(C13478B.f90526L, z10, interfaceC3013f2.a());
            C13480D c13480d = this.f96488b;
            C14549x c14549x = C13478B.f90528N;
            if (c13480d.g(c14549x)) {
                this.f96487a.l(interfaceC3013f.a());
                C13478B f10 = this.f96488b.f(c14549x);
                C13509v y10 = C13509v.y(f10.A());
                try {
                    C13480D c13480d2 = new C13480D();
                    c13480d2.b(this.f96488b.e());
                    c13480d2.c(C13478B.f90527M, false, A0.f98776c);
                    this.f96488b.k(c14549x, f10.B(), y10.G(this.f96487a.b(), c13480d2.e()));
                } catch (IOException e10) {
                    throw new IllegalStateException("unable to replace deltaCertificateDescriptor: " + e10.getMessage());
                }
            }
            this.f96487a.l(null);
            this.f96487a.f(this.f96488b.e());
            try {
                this.f96488b.c(C13478B.f90527M, z10, new C14538r0(i(interfaceC3013f2, this.f96487a.a())));
                this.f96487a.l(interfaceC3013f.a());
                this.f96487a.f(this.f96488b.e());
                j0 b10 = this.f96487a.b();
                return new C14146h(j(b10, interfaceC3013f.a(), i(interfaceC3013f, b10)));
            } catch (IOException e11) {
                throw org.bouncycastle.util.h.a("cannot produce certificate signature", e11);
            }
        } catch (IOException e12) {
            throw org.bouncycastle.util.h.b("cannot add altSignatureAlgorithm extension", e12);
        }
    }

    public C14152n g(C14549x c14549x, boolean z10, C14146h c14146h) {
        C13478B x10 = c14146h.x().E().v().x(c14549x);
        if (x10 != null) {
            this.f96488b.d(c14549x, z10, x10.y().H());
            return this;
        }
        throw new NullPointerException("extension " + ((Object) c14549x) + " not present");
    }

    public final C13478B h(C14549x c14549x) {
        if (this.f96488b.h()) {
            return null;
        }
        return this.f96488b.e().x(c14549x);
    }

    public C13478B k(C14549x c14549x) {
        return h(c14549x);
    }

    public boolean l(C14549x c14549x) {
        return h(c14549x) != null;
    }

    public C14152n m(C14549x c14549x) {
        this.f96488b = C14141c.d(this.f96488b, c14549x);
        return this;
    }

    public C14152n n(C13478B c13478b) throws CertIOException {
        this.f96488b = C14141c.e(this.f96488b, c13478b);
        return this;
    }

    public C14152n o(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws CertIOException {
        try {
            this.f96488b = C14141c.e(this.f96488b, new C13478B(c14549x, z10, interfaceC14516g.r().s(InterfaceC14520i.f98892a)));
            return this;
        } catch (IOException e10) {
            throw new CertIOException("cannot encode extension: " + e10.getMessage(), e10);
        }
    }

    public C14152n p(C14549x c14549x, boolean z10, byte[] bArr) throws CertIOException {
        this.f96488b = C14141c.e(this.f96488b, new C13478B(c14549x, z10, bArr));
        return this;
    }

    public C14152n q(boolean[] zArr) {
        this.f96487a.j(d(zArr));
        return this;
    }

    public C14152n r(boolean[] zArr) {
        this.f96487a.r(d(zArr));
        return this;
    }

    public C14152n(C13228d c13228d, BigInteger bigInteger, Date date, Date date2, C13228d c13228d2, h0 h0Var) {
        this(c13228d, bigInteger, new o0(date), new o0(date2), c13228d2, h0Var);
    }

    public C14152n(C13228d c13228d, BigInteger bigInteger, Date date, Date date2, Locale locale, C13228d c13228d2, h0 h0Var) {
        this(c13228d, bigInteger, new o0(date, locale), new o0(date2, locale), c13228d2, h0Var);
    }

    public C14152n(C14146h c14146h) {
        u0 u0Var = new u0();
        this.f96487a = u0Var;
        u0Var.k(new C14539s(c14146h.i()));
        this.f96487a.h(c14146h.e());
        this.f96487a.m(new o0(c14146h.h()));
        this.f96487a.d(new o0(c14146h.g()));
        this.f96487a.o(c14146h.l());
        this.f96487a.q(c14146h.m());
        this.f96488b = new C13480D();
        C13479C d10 = c14146h.d();
        Enumeration F10 = d10.F();
        while (F10.hasMoreElements()) {
            C14549x c14549x = (C14549x) F10.nextElement();
            if (!C13478B.f90525K.A(c14549x) && !C13478B.f90526L.A(c14549x) && !C13478B.f90527M.A(c14549x)) {
                this.f96488b.a(d10.x(c14549x));
            }
        }
    }
}
