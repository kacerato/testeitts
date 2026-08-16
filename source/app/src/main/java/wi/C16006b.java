package wi;

import fi.C13228d;
import java.util.Collection;
import java.util.Iterator;
import li.C14145g;
import li.C14146h;
import org.bouncycastle.cert.path.CertPathValidationException;
import org.bouncycastle.util.n;
import org.bouncycastle.util.r;
import org.bouncycastle.util.t;
import vi.C15852d;
import vi.InterfaceC15851c;

public class C16006b implements InterfaceC15851c {

    public t f127570a;

    public C13228d f127571b;

    public class a implements r {
        public a() {
        }

        @Override
        public boolean Z2(Object obj) {
            return ((C14145g) obj).e().equals(C16006b.this.f127571b);
        }

        @Override
        public Object clone() {
            return this;
        }
    }

    public C16006b(C13228d c13228d, t tVar) {
        this.f127571b = c13228d;
        this.f127570a = tVar;
    }

    @Override
    public n copy() {
        return new C16006b(this.f127571b, this.f127570a);
    }

    @Override
    public void g(C15852d c15852d, C14146h c14146h) throws CertPathValidationException {
        Collection a10 = this.f127570a.a(new a());
        if (a10.isEmpty()) {
            throw new CertPathValidationException("CRL for " + ((Object) this.f127571b) + " not found");
        }
        Iterator it = a10.iterator();
        while (it.hasNext()) {
            if (((C14145g) it.next()).h(c14146h.i()) != null) {
                throw new CertPathValidationException("Certificate revoked");
            }
        }
        this.f127571b = c14146h.l();
    }

    @Override
    public void j(n nVar) {
        C16006b c16006b = (C16006b) nVar;
        this.f127571b = c16006b.f127571b;
        this.f127570a = c16006b.f127570a;
    }
}
