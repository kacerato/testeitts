package cm;

import Qk.p;
import Qk.q;
import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import oh.AbstractC14536q;
import oh.C14549x;
import org.bouncycastle.cms.C14678t;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.tsp.cms.ImprintDigestInvalidException;
import org.bouncycastle.tsp.h;
import uh.C15611b;
import uh.C15625p;
import uh.InterfaceC15621l;
import uh.d0;

public class C4226c extends C14678t {

    public d0 f35045c;

    public C4229f f35046d;

    public C4226c(InputStream inputStream) throws CMSException {
        super(inputStream);
        k(this.f101017a);
    }

    public byte[] b(p pVar) throws CMSException {
        return this.f35046d.a(pVar);
    }

    public InputStream c() {
        if (this.f35045c.a() != null) {
            return this.f35045c.a().a();
        }
        return null;
    }

    public URI d() throws URISyntaxException {
        AbstractC14536q c10 = this.f35045c.c();
        if (c10 != null) {
            return new URI(c10.getString());
        }
        return null;
    }

    public String e() {
        return this.f35046d.c();
    }

    public String f() {
        return this.f35046d.d();
    }

    public p g(q qVar) throws OperatorCreationException {
        try {
            l();
            return this.f35046d.e(qVar);
        } catch (CMSException e10) {
            throw new OperatorCreationException("unable to extract algorithm ID: " + e10.getMessage(), e10);
        }
    }

    public C15611b h() {
        return this.f35046d.f();
    }

    public h[] i() throws CMSException {
        l();
        return this.f35046d.h();
    }

    public void j(p pVar) throws CMSException {
        this.f35046d.j(pVar);
    }

    public final void k(C15625p c15625p) throws CMSException {
        try {
            C14549x c14549x = InterfaceC15621l.f120714v8;
            if (c14549x.A(c15625p.b())) {
                this.f35045c = d0.d(c15625p.a(16));
                return;
            }
            throw new IllegalArgumentException("Malformed content - type must be " + c14549x.J());
        } catch (IOException e10) {
            throw new CMSException("parsing exception: " + e10.getMessage(), e10);
        }
    }

    public final void l() throws CMSException {
        try {
            if (this.f35046d == null) {
                InputStream c10 = c();
                if (c10 != null) {
                    C13260d.a(c10);
                }
                this.f35046d = new C4229f(this.f35045c);
            }
        } catch (IOException e10) {
            throw new CMSException("unable to parse evidence block: " + e10.getMessage(), e10);
        }
    }

    public void m(q qVar, byte[] bArr) throws ImprintDigestInvalidException, CMSException {
        l();
        this.f35046d.k(qVar, bArr);
    }

    public void n(q qVar, byte[] bArr, h hVar) throws ImprintDigestInvalidException, CMSException {
        l();
        this.f35046d.l(qVar, bArr, hVar);
    }

    public C4226c(byte[] bArr) throws CMSException {
        this(new ByteArrayInputStream(bArr));
    }
}
