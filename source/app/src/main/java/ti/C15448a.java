package ti;

import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import Vh.p;
import hi.C13478B;
import hi.C13479C;
import hi.C13486b;
import hi.C13505q;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.Set;
import li.C14146h;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.ocsp.OCSPException;

public class C15448a implements org.bouncycastle.util.g {

    public Vh.a f117650b;

    public Vh.l f117651c;

    public C13479C f117652d;

    public C15448a(Vh.a aVar) {
        this.f117650b = aVar;
        this.f117651c = aVar.z();
        this.f117652d = C13479C.C(aVar.z().z());
    }

    public C14146h[] a() {
        E u10;
        if (this.f117650b.u() != null && (u10 = this.f117650b.u()) != null) {
            int size = u10.size();
            C14146h[] c14146hArr = new C14146h[size];
            for (int i10 = 0; i10 != size; i10++) {
                c14146hArr[i10] = new C14146h(C13505q.v(u10.I(i10)));
            }
            return c14146hArr;
        }
        return C15456i.f117685a;
    }

    public Set b() {
        return C15456i.b(this.f117652d);
    }

    public C13478B c(C14549x c14549x) {
        C13479C c13479c = this.f117652d;
        if (c13479c != null) {
            return c13479c.x(c14549x);
        }
        return null;
    }

    public List d() {
        return C15456i.c(this.f117652d);
    }

    public Set e() {
        return C15456i.d(this.f117652d);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C15448a) {
            return this.f117650b.equals(((C15448a) obj).f117650b);
        }
        return false;
    }

    public Date f() {
        return C15456i.a(this.f117651c.x());
    }

    public C15459l g() {
        return new C15459l(this.f117651c.y());
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f117650b.getEncoded();
    }

    public C15461n[] h() {
        E A10 = this.f117651c.A();
        int size = A10.size();
        C15461n[] c15461nArr = new C15461n[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15461nArr[i10] = new C15461n(p.w(A10.I(i10)));
        }
        return c15461nArr;
    }

    public int hashCode() {
        return this.f117650b.hashCode();
    }

    public byte[] i() {
        return this.f117650b.x().J();
    }

    public C14549x j() {
        return this.f117650b.y().u();
    }

    public C13486b k() {
        return this.f117650b.y();
    }

    public byte[] l() {
        try {
            return this.f117650b.z().s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            return null;
        }
    }

    public int m() {
        return this.f117651c.B().O() + 1;
    }

    public boolean n() {
        return this.f117652d != null;
    }

    public boolean o(InterfaceC3015h interfaceC3015h) throws OCSPException {
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(this.f117650b.y());
            OutputStream outputStream = a10.getOutputStream();
            outputStream.write(this.f117650b.z().s(InterfaceC14520i.f98892a));
            outputStream.close();
            return a10.verify(i());
        } catch (Exception e10) {
            throw new OCSPException("exception processing sig: " + ((Object) e10), e10);
        }
    }
}
