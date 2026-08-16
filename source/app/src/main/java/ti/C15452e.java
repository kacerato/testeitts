package ti;

import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import hi.C13478B;
import hi.C13479C;
import hi.C13481E;
import hi.C13505q;
import java.io.IOException;
import java.util.List;
import java.util.Set;
import li.C14146h;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14520i;
import oh.r;
import org.bouncycastle.asn1.ASN1Exception;
import org.bouncycastle.cert.CertIOException;
import org.bouncycastle.cert.ocsp.OCSPException;

public class C15452e {

    public static final C14146h[] f117664c = new C14146h[0];

    public Vh.f f117665a;

    public C13479C f117666b;

    public C15452e(Vh.f fVar) {
        this.f117665a = fVar;
        this.f117666b = fVar.y().x();
    }

    public C14146h[] a() {
        E u10;
        if (this.f117665a.x() != null && (u10 = this.f117665a.x().u()) != null) {
            int size = u10.size();
            C14146h[] c14146hArr = new C14146h[size];
            for (int i10 = 0; i10 != size; i10++) {
                c14146hArr[i10] = new C14146h(C13505q.v(u10.I(i10)));
            }
            return c14146hArr;
        }
        return f117664c;
    }

    public Set b() {
        return C15456i.b(this.f117666b);
    }

    public byte[] c() throws IOException {
        return this.f117665a.getEncoded();
    }

    public C13478B d(C14549x c14549x) {
        C13479C c13479c = this.f117666b;
        if (c13479c != null) {
            return c13479c.x(c14549x);
        }
        return null;
    }

    public List e() {
        return C15456i.c(this.f117666b);
    }

    public Set f() {
        return C15456i.d(this.f117666b);
    }

    public C15457j[] g() {
        E y10 = this.f117665a.y().y();
        int size = y10.size();
        C15457j[] c15457jArr = new C15457j[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15457jArr[i10] = new C15457j(Vh.i.u(y10.I(i10)));
        }
        return c15457jArr;
    }

    public C13481E h() {
        return C13481E.v(this.f117665a.y().z());
    }

    public byte[] i() {
        if (n()) {
            return this.f117665a.x().x().J();
        }
        return null;
    }

    public C14549x j() {
        if (n()) {
            return this.f117665a.x().y().u();
        }
        return null;
    }

    public int k() {
        return this.f117665a.y().A().O() + 1;
    }

    public boolean l() {
        return this.f117666b != null;
    }

    public boolean m(InterfaceC3015h interfaceC3015h) throws OCSPException {
        if (!n()) {
            throw new OCSPException("attempt to verify signature on unsigned object");
        }
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(this.f117665a.x().y());
            a10.getOutputStream().write(this.f117665a.y().s(InterfaceC14520i.f98892a));
            return a10.verify(i());
        } catch (Exception e10) {
            throw new OCSPException("exception processing signature: " + ((Object) e10), e10);
        }
    }

    public boolean n() {
        return this.f117665a.x() != null;
    }

    public C15452e(r rVar) throws IOException {
        try {
            Vh.f u10 = Vh.f.u(rVar.k());
            this.f117665a = u10;
            if (u10 == null) {
                throw new CertIOException("malformed request: no request data found");
            }
            this.f117666b = u10.y().x();
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed request: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed request: " + e11.getMessage(), e11);
        } catch (ASN1Exception e12) {
            throw new CertIOException("malformed request: " + e12.getMessage(), e12);
        }
    }

    public C15452e(byte[] bArr) throws IOException {
        this(new r(bArr));
    }
}
