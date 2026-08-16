package org.bouncycastle.cms;

import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import oh.AbstractC14551y;
import oh.C14549x;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15624o;
import uh.C15626q;

public class C14679u implements org.bouncycastle.util.g {

    public C15624o f101019b;

    public C15626q f101020c;

    public C14679u(InputStream inputStream) throws CMSException {
        this(X.F(inputStream));
    }

    public C14549x a() {
        return this.f101019b.v();
    }

    public C13486b b() {
        return this.f101020c.v();
    }

    public F c() throws CMSException {
        C15624o x10 = this.f101020c.x();
        try {
            return new G(x10.v(), ((AbstractC14551y) x10.u()).H());
        } catch (Exception e10) {
            throw new CMSException("exception reading digested stream.", e10);
        }
    }

    public C15624o d() {
        return this.f101019b;
    }

    public boolean e(Qk.q qVar) throws CMSException {
        try {
            C15624o x10 = this.f101020c.x();
            Qk.p a10 = qVar.a(this.f101020c.v());
            a10.getOutputStream().write(((AbstractC14551y) x10.u()).H());
            return org.bouncycastle.util.a.g(this.f101020c.u(), a10.b());
        } catch (IOException e10) {
            throw new CMSException("unable process content: " + e10.getMessage(), e10);
        } catch (OperatorCreationException e11) {
            throw new CMSException("unable to create digest calculator: " + e11.getMessage(), e11);
        }
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f101019b.getEncoded();
    }

    public C14679u(C15624o c15624o) throws CMSException {
        this.f101019b = c15624o;
        try {
            this.f101020c = C15626q.y(c15624o.u());
        } catch (ClassCastException e10) {
            throw new CMSException("Malformed content.", e10);
        } catch (IllegalArgumentException e11) {
            throw new CMSException("Malformed content.", e11);
        }
    }

    public C14679u(byte[] bArr) throws CMSException {
        this(X.H(bArr));
    }
}
