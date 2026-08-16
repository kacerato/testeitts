package org.bouncycastle.jce.provider;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.x509.util.StreamParsingException;

public class S extends org.bouncycastle.x509.v {

    public static final C14744z f101664d = new C14744z(org.bouncycastle.openssl.i.f101879m);

    public oh.G f101665a = null;

    public int f101666b = 0;

    public InputStream f101667c = null;

    @Override
    public void a(InputStream inputStream) {
        this.f101667c = inputStream;
        this.f101665a = null;
        this.f101666b = 0;
        if (inputStream.markSupported()) {
            return;
        }
        this.f101667c = new BufferedInputStream(this.f101667c);
    }

    @Override
    public Object b() throws StreamParsingException {
        try {
            oh.G g10 = this.f101665a;
            if (g10 != null) {
                if (this.f101666b != g10.size()) {
                    return d();
                }
                this.f101665a = null;
                this.f101666b = 0;
                return null;
            }
            this.f101667c.mark(10);
            int read = this.f101667c.read();
            if (read == -1) {
                return null;
            }
            if (read != 48) {
                this.f101667c.reset();
                return f(this.f101667c);
            }
            this.f101667c.reset();
            return e(this.f101667c);
        } catch (Exception e10) {
            throw new StreamParsingException(e10.toString(), e10);
        }
    }

    @Override
    public Collection c() throws StreamParsingException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            org.bouncycastle.x509.l lVar = (org.bouncycastle.x509.l) b();
            if (lVar == null) {
                return arrayList;
            }
            arrayList.add(lVar);
        }
    }

    public final org.bouncycastle.x509.l d() throws IOException {
        if (this.f101665a == null) {
            return null;
        }
        while (this.f101666b < this.f101665a.size()) {
            oh.G g10 = this.f101665a;
            int i10 = this.f101666b;
            this.f101666b = i10 + 1;
            InterfaceC14516g H10 = g10.H(i10);
            if (H10 instanceof oh.M) {
                oh.M m10 = (oh.M) H10;
                if (m10.g() == 2) {
                    return new org.bouncycastle.x509.y(oh.E.H(m10, false).getEncoded());
                }
            }
        }
        return null;
    }

    public final org.bouncycastle.x509.l e(InputStream inputStream) throws IOException {
        oh.E G10 = oh.E.G(new oh.r(inputStream).k());
        if (G10.size() <= 1 || !(G10.I(0) instanceof C14549x) || !G10.I(0).equals(Xh.t.f29019I1)) {
            return new org.bouncycastle.x509.y(G10.getEncoded());
        }
        this.f101665a = new Xh.D(oh.E.H((oh.M) G10.I(1), true)).v();
        return d();
    }

    public final org.bouncycastle.x509.l f(InputStream inputStream) throws IOException {
        oh.E b10 = f101664d.b(inputStream);
        if (b10 != null) {
            return new org.bouncycastle.x509.y(b10.getEncoded());
        }
        return null;
    }
}
