package wi;

import hi.C13478B;
import hi.C13500l;
import li.C14146h;
import oh.C14539s;
import org.bouncycastle.cert.path.CertPathValidationException;
import org.bouncycastle.util.k;
import org.bouncycastle.util.n;
import vi.C15852d;
import vi.InterfaceC15851c;

public class C16005a implements InterfaceC15851c {

    public boolean f127567a;

    public Integer f127568b;

    public boolean f127569c;

    public C16005a() {
        this(true);
    }

    @Override
    public n copy() {
        C16005a c16005a = new C16005a();
        c16005a.f127569c = this.f127569c;
        c16005a.f127567a = this.f127567a;
        c16005a.f127568b = this.f127568b;
        return c16005a;
    }

    @Override
    public void g(C15852d c15852d, C14146h c14146h) throws CertPathValidationException {
        C14539s y10;
        c15852d.a(C13478B.f90535k);
        if (!this.f127567a) {
            throw new CertPathValidationException("Basic constraints violated: issuer is not a CA");
        }
        C13500l u10 = C13500l.u(c14146h.d());
        this.f127567a = (u10 != null && u10.z()) || (u10 == null && !this.f127569c);
        if (this.f127568b != null && !c14146h.l().equals(c14146h.e())) {
            if (this.f127568b.intValue() < 0) {
                throw new CertPathValidationException("Basic constraints violated: path length exceeded");
            }
            this.f127568b = k.j(this.f127568b.intValue() - 1);
        }
        if (u10 == null || !u10.z() || (y10 = u10.y()) == null) {
            return;
        }
        int M10 = y10.M();
        Integer num = this.f127568b;
        if (num == null || M10 < num.intValue()) {
            this.f127568b = k.j(M10);
        }
    }

    @Override
    public void j(n nVar) {
        C16005a c16005a = (C16005a) nVar;
        this.f127569c = c16005a.f127569c;
        this.f127567a = c16005a.f127567a;
        this.f127568b = c16005a.f127568b;
    }

    public C16005a(boolean z10) {
        this.f127567a = true;
        this.f127568b = null;
        this.f127569c = z10;
    }
}
