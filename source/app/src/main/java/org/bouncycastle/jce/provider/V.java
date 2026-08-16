package org.bouncycastle.jce.provider;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.util.ArrayList;
import java.util.Collection;
import oh.C14549x;
import org.bouncycastle.x509.util.StreamParsingException;

public class V extends org.bouncycastle.x509.v {

    public static final C14744z f101678d = new C14744z("CRL");

    public oh.G f101679a = null;

    public int f101680b = 0;

    public InputStream f101681c = null;

    @Override
    public void a(InputStream inputStream) {
        this.f101681c = inputStream;
        this.f101679a = null;
        this.f101680b = 0;
        if (inputStream.markSupported()) {
            return;
        }
        this.f101681c = new BufferedInputStream(this.f101681c);
    }

    @Override
    public Object b() throws StreamParsingException {
        try {
            oh.G g10 = this.f101679a;
            if (g10 != null) {
                if (this.f101680b != g10.size()) {
                    return d();
                }
                this.f101679a = null;
                this.f101680b = 0;
                return null;
            }
            this.f101681c.mark(10);
            int read = this.f101681c.read();
            if (read == -1) {
                return null;
            }
            if (read != 48) {
                this.f101681c.reset();
                return f(this.f101681c);
            }
            this.f101681c.reset();
            return e(this.f101681c);
        } catch (Exception e10) {
            throw new StreamParsingException(e10.toString(), e10);
        }
    }

    @Override
    public Collection c() throws StreamParsingException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            CRL crl = (CRL) b();
            if (crl == null) {
                return arrayList;
            }
            arrayList.add(crl);
        }
    }

    public final CRL d() throws CRLException {
        oh.G g10 = this.f101679a;
        if (g10 == null || this.f101680b >= g10.size()) {
            return null;
        }
        oh.G g11 = this.f101679a;
        int i10 = this.f101680b;
        this.f101680b = i10 + 1;
        return new U(hi.r.u(g11.H(i10)));
    }

    public final CRL e(InputStream inputStream) throws IOException, CRLException {
        oh.E e10 = (oh.E) new oh.r(inputStream).k();
        if (e10.size() <= 1 || !(e10.I(0) instanceof C14549x) || !e10.I(0).equals(Xh.t.f29019I1)) {
            return new U(hi.r.u(e10));
        }
        this.f101679a = new Xh.D(oh.E.H((oh.M) e10.I(1), true)).u();
        return d();
    }

    public final CRL f(InputStream inputStream) throws IOException, CRLException {
        oh.E b10 = f101678d.b(inputStream);
        if (b10 != null) {
            return new U(hi.r.u(b10));
        }
        return null;
    }
}
