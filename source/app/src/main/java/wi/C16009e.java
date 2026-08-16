package wi;

import hi.C13478B;
import hi.N;
import li.C14146h;
import org.bouncycastle.cert.path.CertPathValidationException;
import org.bouncycastle.util.n;
import vi.C15852d;
import vi.InterfaceC15851c;

public class C16009e implements InterfaceC15851c {

    public boolean f127579a;

    public C16009e() {
        this(true);
    }

    @Override
    public n copy() {
        return new C16009e(this.f127579a);
    }

    @Override
    public void g(C15852d c15852d, C14146h c14146h) throws CertPathValidationException {
        c15852d.a(C13478B.f90531g);
        if (c15852d.c()) {
            return;
        }
        N u10 = N.u(c14146h.d());
        if (u10 != null) {
            if (!u10.x(4)) {
                throw new CertPathValidationException("Issuer certificate KeyUsage extension does not permit key signing");
            }
        } else if (this.f127579a) {
            throw new CertPathValidationException("KeyUsage extension not present in CA certificate");
        }
    }

    @Override
    public void j(n nVar) {
        this.f127579a = ((C16009e) nVar).f127579a;
    }

    public C16009e(boolean z10) {
        this.f127579a = z10;
    }
}
