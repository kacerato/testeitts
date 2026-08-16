package wi;

import fi.C13228d;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import li.C14146h;
import li.InterfaceC14147i;
import oh.AbstractC14541t;
import oh.InterfaceC14516g;
import org.bouncycastle.cert.CertException;
import org.bouncycastle.cert.path.CertPathValidationException;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.util.n;
import vi.C15852d;
import vi.InterfaceC15851c;

public class C16010f implements InterfaceC15851c {

    public InterfaceC14147i f127580a;

    public C13228d f127581b;

    public h0 f127582c;

    public C13486b f127583d;

    public C16010f(InterfaceC14147i interfaceC14147i) {
        this.f127580a = interfaceC14147i;
    }

    public final boolean a(InterfaceC14516g interfaceC14516g) {
        return interfaceC14516g == null || (interfaceC14516g instanceof AbstractC14541t);
    }

    @Override
    public n copy() {
        C16010f c16010f = new C16010f(this.f127580a);
        c16010f.f127583d = this.f127583d;
        c16010f.f127581b = this.f127581b;
        c16010f.f127582c = this.f127582c;
        return c16010f;
    }

    @Override
    public void g(C15852d c15852d, C14146h c14146h) throws CertPathValidationException {
        C13228d c13228d = this.f127581b;
        if (c13228d != null && !c13228d.equals(c14146h.e())) {
            throw new CertPathValidationException("Certificate issue does not match parent");
        }
        h0 h0Var = this.f127582c;
        if (h0Var != null) {
            try {
                if (!c14146h.s(this.f127580a.a(h0Var.u().equals(this.f127583d) ? this.f127582c : new h0(this.f127583d, this.f127582c.A())))) {
                    throw new CertPathValidationException("Certificate signature not for public key in parent");
                }
            } catch (IOException e10) {
                throw new CertPathValidationException("Unable to build public key: " + e10.getMessage(), e10);
            } catch (CertException e11) {
                throw new CertPathValidationException("Unable to validate signature: " + e11.getMessage(), e11);
            } catch (OperatorCreationException e12) {
                throw new CertPathValidationException("Unable to create verifier: " + e12.getMessage(), e12);
            }
        }
        this.f127581b = c14146h.l();
        h0 m10 = c14146h.m();
        this.f127582c = m10;
        C13486b c13486b = this.f127583d;
        C13486b u10 = m10.u();
        if (c13486b != null) {
            if (u10.u().A(this.f127583d.u()) && a(this.f127582c.u().x())) {
                return;
            } else {
                u10 = this.f127582c.u();
            }
        }
        this.f127583d = u10;
    }

    @Override
    public void j(n nVar) {
        C16010f c16010f = (C16010f) nVar;
        this.f127580a = c16010f.f127580a;
        this.f127583d = c16010f.f127583d;
        this.f127581b = c16010f.f127581b;
        this.f127582c = c16010f.f127582c;
    }
}
