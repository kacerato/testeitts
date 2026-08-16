package ni;

import Qk.A;
import Qk.InterfaceC3013f;
import hi.C13481E;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import li.C14146h;
import oh.C14518h;
import oh.C14530n;
import oh.C14538r0;
import oh.G0;
import oh.InterfaceC14520i;
import oi.C14557c;
import oi.C14559e;
import org.bouncycastle.cert.cmp.CMPException;
import th.C;
import th.C15426b;
import th.C15443t;
import th.F;
import th.G;
import th.H;
import th.I;

public class h {

    public H f98246a;

    public C f98247b;

    public List f98248c;

    public List f98249d;

    public h(int i10, C13481E c13481e, C13481E c13481e2) {
        this.f98248c = new ArrayList();
        this.f98249d = new ArrayList();
        this.f98246a = new H(i10, c13481e, c13481e2);
    }

    public h a(C14146h c14146h) {
        this.f98249d.add(c14146h);
        return this;
    }

    public h b(C15443t c15443t) {
        this.f98248c.add(c15443t);
        return this;
    }

    public g c(InterfaceC3013f interfaceC3013f) throws CMPException {
        if (this.f98247b == null) {
            throw new IllegalStateException("body must be set before building");
        }
        g(interfaceC3013f.a());
        G b10 = this.f98246a.b();
        try {
            return h(b10, new C14538r0(f(interfaceC3013f, b10, this.f98247b)));
        } catch (IOException e10) {
            throw new CMPException("unable to encode signature input: " + e10.getMessage(), e10);
        }
    }

    public g d(A a10) throws CMPException {
        if (this.f98247b == null) {
            throw new IllegalStateException("body must be set before building");
        }
        g(a10.a());
        G b10 = this.f98246a.b();
        try {
            return h(b10, new C14538r0(e(a10, b10, this.f98247b)));
        } catch (IOException e10) {
            throw new CMPException("unable to encode MAC input: " + e10.getMessage(), e10);
        }
    }

    public final byte[] e(A a10, G g10, C c10) throws IOException {
        C14518h c14518h = new C14518h();
        c14518h.a(g10);
        c14518h.a(c10);
        OutputStream outputStream = a10.getOutputStream();
        outputStream.write(new G0(c14518h).s(InterfaceC14520i.f98892a));
        outputStream.close();
        return a10.e();
    }

    public final byte[] f(InterfaceC3013f interfaceC3013f, G g10, C c10) throws IOException {
        C14518h c14518h = new C14518h();
        c14518h.a(g10);
        c14518h.a(c10);
        OutputStream outputStream = interfaceC3013f.getOutputStream();
        outputStream.write(new G0(c14518h).s(InterfaceC14520i.f98892a));
        outputStream.close();
        return interfaceC3013f.getSignature();
    }

    public final void g(C13486b c13486b) {
        this.f98246a.k(c13486b);
        if (this.f98248c.isEmpty()) {
            return;
        }
        this.f98246a.i((C15443t[]) this.f98248c.toArray(new C15443t[this.f98248c.size()]));
    }

    public final g h(G g10, C14538r0 c14538r0) {
        if (this.f98249d.isEmpty()) {
            return new g(new I(g10, this.f98247b, c14538r0));
        }
        int size = this.f98249d.size();
        C15426b[] c15426bArr = new C15426b[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15426bArr[i10] = new C15426b(((C14146h) this.f98249d.get(i10)).x());
        }
        return new g(new I(g10, this.f98247b, c14538r0, c15426bArr));
    }

    public h i(int i10, C14450c c14450c) {
        if (C14450c.d(i10)) {
            this.f98247b = new C(i10, c14450c.e());
            return this;
        }
        throw new IllegalArgumentException("body type " + i10 + " does not match CMP type CertConfirmContent");
    }

    public h j(int i10, C14557c c14557c) {
        if (C14557c.e(i10)) {
            this.f98247b = new C(i10, c14557c.g());
            return this;
        }
        throw new IllegalArgumentException("body type " + i10 + " does not match CMP type CertRepMessage");
    }

    public h k(int i10, C14559e c14559e) {
        if (C14559e.c(i10)) {
            this.f98247b = new C(i10, c14559e.d());
            return this;
        }
        throw new IllegalArgumentException("body type " + i10 + " does not match CMP type CertReqMessages");
    }

    public h l(C c10) {
        this.f98247b = c10;
        return this;
    }

    public h m(F f10) {
        this.f98246a.f(f10);
        return this;
    }

    public h n(Date date) {
        this.f98246a.j(new C14530n(date));
        return this;
    }

    public h o(byte[] bArr) {
        this.f98246a.m(bArr);
        return this;
    }

    public h p(byte[] bArr) {
        this.f98246a.o(bArr);
        return this;
    }

    public h q(byte[] bArr) {
        this.f98246a.q(bArr);
        return this;
    }

    public h r(byte[] bArr) {
        this.f98246a.s(bArr);
        return this;
    }

    public h s(byte[] bArr) {
        this.f98246a.u(bArr);
        return this;
    }

    public h(C13481E c13481e, C13481E c13481e2) {
        this(2, c13481e, c13481e2);
    }
}
