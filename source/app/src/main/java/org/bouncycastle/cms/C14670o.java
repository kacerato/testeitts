package org.bouncycastle.cms;

import java.io.IOException;
import java.io.InputStream;
import oh.AbstractC14551y;
import oh.C14549x;
import uh.C15622m;
import uh.C15624o;

public class C14670o implements org.bouncycastle.util.g {

    public C15624o f101001b;

    public C15622m f101002c;

    public C14670o(InputStream inputStream) throws CMSException {
        this(X.F(inputStream));
    }

    public C14549x a() {
        return this.f101002c.v().v();
    }

    public byte[] b(Qk.w wVar) throws CMSException {
        try {
            return X.I(wVar.a(this.f101002c.u()).d(((AbstractC14551y) this.f101002c.v().u()).a()));
        } catch (IOException e10) {
            throw new CMSException("exception reading compressed stream.", e10);
        }
    }

    public W c(Qk.w wVar) {
        C15624o v10 = this.f101002c.v();
        return new W(v10.v(), wVar.a(this.f101002c.u()).d(((AbstractC14551y) v10.u()).a()));
    }

    public C14549x d() {
        return this.f101001b.v();
    }

    public C15624o e() {
        return this.f101001b;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f101001b.getEncoded();
    }

    public C14670o(C15624o c15624o) throws CMSException {
        this.f101001b = c15624o;
        try {
            this.f101002c = C15622m.w(c15624o.u());
        } catch (ClassCastException e10) {
            throw new CMSException("Malformed content.", e10);
        } catch (IllegalArgumentException e11) {
            throw new CMSException("Malformed content.", e11);
        }
    }

    public C14670o(byte[] bArr) throws CMSException {
        this(X.H(bArr));
    }
}
