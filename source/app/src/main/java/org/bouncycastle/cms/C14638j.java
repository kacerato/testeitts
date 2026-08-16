package org.bouncycastle.cms;

import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import oh.AbstractC14551y;
import oh.C14518h;
import org.bouncycastle.cms.D;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15610a;
import uh.C15611b;
import uh.C15615f;
import uh.C15618i;
import uh.C15624o;
import uh.InterfaceC15619j;

public class C14638j implements org.bouncycastle.util.g {

    public I0 f100783b;

    public C15624o f100784c;

    public C13486b f100785d;

    public oh.G f100786e;

    public oh.G f100787f;

    public byte[] f100788g;

    public x0 f100789h;

    public C14638j(InputStream inputStream) throws CMSException {
        this(X.F(inputStream));
    }

    public C15611b a() {
        oh.G g10 = this.f100786e;
        if (g10 == null) {
            return null;
        }
        return new C15611b(g10);
    }

    public byte[] b() {
        if (this.f100786e != null) {
            return AbstractC14551y.F(a().d(InterfaceC15619j.f120688b).v().H(0)).H();
        }
        return null;
    }

    public C15624o c() {
        return this.f100784c;
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f100788g);
    }

    public String e() {
        return this.f100785d.u().J();
    }

    public byte[] f() {
        try {
            return X.l(this.f100785d.x());
        } catch (Exception e10) {
            throw new RuntimeException("exception getting encryption parameters " + ((Object) e10));
        }
    }

    public C13486b g() {
        return this.f100785d;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f100784c.getEncoded();
    }

    public x0 h() {
        return this.f100789h;
    }

    public I0 i() {
        return this.f100783b;
    }

    public C15611b j() {
        oh.G g10 = this.f100787f;
        if (g10 == null) {
            return null;
        }
        return new C15611b(g10);
    }

    public C15624o k() {
        return this.f100784c;
    }

    public C14638j(InputStream inputStream, Qk.q qVar) throws CMSException {
        this(X.F(inputStream), qVar);
    }

    public C14638j(C15624o c15624o) throws CMSException {
        this(c15624o, (Qk.q) null);
    }

    public C14638j(C15624o c15624o, Qk.q qVar) throws CMSException {
        this.f100784c = c15624o;
        C15615f z10 = C15615f.z(c15624o.u());
        if (z10.D() != null) {
            this.f100789h = new x0(z10.D());
        }
        oh.G E10 = z10.E();
        this.f100785d = z10.C();
        this.f100786e = z10.v();
        this.f100788g = z10.B().H();
        this.f100787f = z10.F();
        C15624o y10 = z10.y();
        G g10 = new G(y10.v(), AbstractC14551y.F(y10.u()).H());
        oh.G g11 = this.f100786e;
        if (g11 == null) {
            this.f100783b = D.a(E10, this.f100785d, new D.a(this.f100785d, y10.v(), g10));
            return;
        }
        if (qVar == null) {
            throw new CMSException("a digest calculator provider is required if authenticated attributes are present");
        }
        C14518h e10 = new C15611b(g11).e(InterfaceC15619j.f120693g);
        if (e10.i() > 1) {
            throw new CMSException("Only one instance of a cmsAlgorithmProtect attribute can be present");
        }
        if (e10.i() > 0) {
            C15610a y11 = C15610a.y(e10.g(0));
            if (y11.v().size() != 1) {
                throw new CMSException("A cmsAlgorithmProtect attribute MUST contain exactly one value");
            }
            C15618i v10 = C15618i.v(y11.x()[0]);
            if (!X.A(v10.u(), z10.x())) {
                throw new CMSException("CMS Algorithm Identifier Protection check failed for digestAlgorithm");
            }
            if (!X.A(v10.x(), this.f100785d)) {
                throw new CMSException("CMS Algorithm Identifier Protection check failed for macAlgorithm");
            }
        }
        try {
            D.c cVar = new D.c(qVar.a(z10.x()), y10.v(), g10);
            cVar.f(this.f100786e);
            this.f100783b = D.a(E10, this.f100785d, cVar);
        } catch (OperatorCreationException e11) {
            throw new CMSException("unable to create digest calculator: " + e11.getMessage(), e11);
        }
    }

    public C14638j(byte[] bArr) throws CMSException {
        this(X.H(bArr));
    }

    public C14638j(byte[] bArr, Qk.q qVar) throws CMSException {
        this(X.H(bArr), qVar);
    }
}
