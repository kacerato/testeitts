package cm;

import Qk.p;
import Qk.q;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import oh.AbstractC14536q;
import oh.C14549x;
import oh.r;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.tsp.cms.ImprintDigestInvalidException;
import org.bouncycastle.tsp.h;
import uh.C15611b;
import uh.C15624o;
import uh.C15631w;
import uh.InterfaceC15621l;
import uh.a0;
import uh.b0;
import uh.c0;

public class C4224a {

    public c0 f35042a;

    public C15624o f35043b;

    public C4229f f35044c;

    public C4224a(InputStream inputStream) throws IOException {
        try {
            l(C15624o.w(new r(inputStream).k()));
        } catch (ClassCastException e10) {
            throw new IOException("Malformed content: " + ((Object) e10));
        } catch (IllegalArgumentException e11) {
            throw new IOException("Malformed content: " + ((Object) e11));
        }
    }

    public C4224a a(h hVar) throws CMSException {
        a0[] i10 = this.f35044c.i();
        a0[] a0VarArr = new a0[i10.length + 1];
        System.arraycopy(i10, 0, a0VarArr, 0, i10.length);
        a0VarArr[i10.length] = new a0(hVar.l().s());
        return new C4224a(new C15624o(InterfaceC15621l.f120714v8, new c0(this.f35042a.x(), this.f35042a.z(), this.f35042a.u(), new C15631w(new b0(a0VarArr)))));
    }

    public byte[] b(p pVar) throws CMSException {
        return this.f35044c.a(pVar);
    }

    public byte[] c() {
        if (this.f35042a.u() != null) {
            return this.f35042a.u().H();
        }
        return null;
    }

    public URI d() throws URISyntaxException {
        AbstractC14536q x10 = this.f35042a.x();
        if (x10 != null) {
            return new URI(x10.getString());
        }
        return null;
    }

    public byte[] e() throws IOException {
        return this.f35043b.getEncoded();
    }

    public String f() {
        return this.f35044c.c();
    }

    public String g() {
        return this.f35044c.d();
    }

    public p h(q qVar) throws OperatorCreationException {
        return this.f35044c.e(qVar);
    }

    public C15611b i() {
        return this.f35044c.f();
    }

    public h[] j() throws CMSException {
        return this.f35044c.h();
    }

    public void k(p pVar) throws CMSException {
        this.f35044c.j(pVar);
    }

    public final void l(C15624o c15624o) {
        this.f35043b = c15624o;
        C14549x c14549x = InterfaceC15621l.f120714v8;
        if (c14549x.A(c15624o.v())) {
            c0 y10 = c0.y(c15624o.u());
            this.f35042a = y10;
            this.f35044c = new C4229f(y10);
        } else {
            throw new IllegalArgumentException("Malformed content - type must be " + c14549x.J());
        }
    }

    public void m(q qVar, byte[] bArr) throws ImprintDigestInvalidException, CMSException {
        this.f35044c.k(qVar, bArr);
    }

    public void n(q qVar, byte[] bArr, h hVar) throws ImprintDigestInvalidException, CMSException {
        this.f35044c.l(qVar, bArr, hVar);
    }

    public C4224a(C15624o c15624o) {
        l(c15624o);
    }

    public C4224a(byte[] bArr) throws IOException {
        this(new ByteArrayInputStream(bArr));
    }
}
