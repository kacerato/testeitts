package org.bouncycastle.tsp;

import Xh.t;
import ci.C4201l;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.V0;
import oh.r;
import th.E;
import th.F;
import uh.C15610a;
import uh.C15624o;

public class f {

    public C4201l f102272a;

    public h f102273b;

    public f(C4201l c4201l) throws TSPException, IOException {
        this.f102272a = c4201l;
        if (c4201l.x() != null) {
            this.f102273b = new h(c4201l.x());
        }
    }

    public static C4201l g(InputStream inputStream) throws IOException, TSPException {
        try {
            return C4201l.u(new r(inputStream).k());
        } catch (ClassCastException e10) {
            throw new TSPException("malformed timestamp response: " + ((Object) e10), e10);
        } catch (IllegalArgumentException e11) {
            throw new TSPException("malformed timestamp response: " + ((Object) e11), e11);
        }
    }

    public byte[] a() throws IOException {
        return this.f102272a.getEncoded();
    }

    public byte[] b(String str) throws IOException {
        return (InterfaceC14520i.f98893b.equals(str) ? this.f102273b == null ? new V0(this.f102272a.v()) : new V0(new InterfaceC14516g[]{this.f102272a.v(), this.f102273b.l().s()}) : this.f102272a).s(str);
    }

    public E c() {
        if (this.f102272a.v().u() != null) {
            return new E(this.f102272a.v().u());
        }
        return null;
    }

    public int d() {
        return this.f102272a.v().x().intValue();
    }

    public String e() {
        if (this.f102272a.v().y() == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        F y10 = this.f102272a.v().y();
        for (int i10 = 0; i10 != y10.size(); i10++) {
            stringBuffer.append(y10.x(i10).getString());
        }
        return stringBuffer.toString();
    }

    public h f() {
        return this.f102273b;
    }

    public void h(d dVar) throws TSPException {
        h f10 = f();
        if (f10 == null) {
            if (d() == 0 || d() == 1) {
                throw new TSPValidationException("no time stamp token found and one expected.");
            }
            return;
        }
        j i10 = f10.i();
        if (dVar.l() != null && !dVar.l().equals(i10.i())) {
            throw new TSPValidationException("response contains wrong nonce value.");
        }
        if (d() != 0 && d() != 1) {
            throw new TSPValidationException("time stamp token found in failed request.");
        }
        if (!org.bouncycastle.util.a.I(dVar.j(), i10.h())) {
            throw new TSPValidationException("response for different message imprint digest.");
        }
        if (!i10.g().A(dVar.i())) {
            throw new TSPValidationException("response for different message imprint algorithm.");
        }
        C15610a d10 = f10.g().d(t.f29122l3);
        C15610a d11 = f10.g().d(t.f29125n3);
        if (d10 == null && d11 == null) {
            throw new TSPValidationException("no signing certificate attribute present.");
        }
        if (dVar.m() != null && !dVar.m().A(i10.j())) {
            throw new TSPValidationException("TSA policy wrong for request.");
        }
    }

    public f(InputStream inputStream) throws TSPException, IOException {
        this(g(inputStream));
    }

    public f(V0 v02) throws TSPException, IOException {
        try {
            this.f102272a = C4201l.u(v02);
            this.f102273b = new h(C15624o.w(v02.I(1)));
        } catch (ClassCastException e10) {
            throw new TSPException("malformed timestamp response: " + ((Object) e10), e10);
        } catch (IllegalArgumentException e11) {
            throw new TSPException("malformed timestamp response: " + ((Object) e11), e11);
        }
    }

    public f(byte[] bArr) throws TSPException, IOException {
        this(new ByteArrayInputStream(bArr));
    }
}
