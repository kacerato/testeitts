package org.bouncycastle.cms;

import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.cms.D;
import uh.C15611b;
import uh.C15624o;
import uh.C15629u;

public class C14683y implements org.bouncycastle.util.g {

    public I0 f101030b;

    public C15624o f101031c;

    public C13486b f101032d;

    public oh.G f101033e;

    public x0 f101034f;

    public C14683y(InputStream inputStream) throws CMSException {
        this(X.F(inputStream));
    }

    public C13486b a() {
        return this.f101032d;
    }

    public String b() {
        return this.f101032d.u().J();
    }

    public byte[] c() {
        try {
            return X.l(this.f101032d.x());
        } catch (Exception e10) {
            throw new RuntimeException("exception getting encryption parameters " + ((Object) e10));
        }
    }

    public x0 d() {
        return this.f101034f;
    }

    public I0 e() {
        return this.f101030b;
    }

    public C15611b f() {
        oh.G g10 = this.f101033e;
        if (g10 == null) {
            return null;
        }
        return new C15611b(g10);
    }

    public C15624o g() {
        return this.f101031c;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f101031c.getEncoded();
    }

    public C14683y(C15624o c15624o) throws CMSException {
        this.f101031c = c15624o;
        try {
            C15629u w10 = C15629u.w(c15624o.u());
            if (w10.y() != null) {
                this.f101034f = new x0(w10.y());
            }
            oh.G z10 = w10.z();
            uh.r v10 = w10.v();
            this.f101032d = v10.u();
            this.f101030b = D.a(z10, this.f101032d, new D.a(this.f101032d, v10.v(), new G(v10.x().H())));
            this.f101033e = w10.A();
        } catch (ClassCastException e10) {
            throw new CMSException("Malformed content.", e10);
        } catch (IllegalArgumentException e11) {
            throw new CMSException("Malformed content.", e11);
        }
    }

    public C14683y(byte[] bArr) throws CMSException {
        this(X.H(bArr));
    }
}
