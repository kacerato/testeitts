package org.bouncycastle.jce.provider;

import hi.C13505q;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.util.ArrayList;
import java.util.Collection;
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.x509.util.StreamParsingException;

public class X extends org.bouncycastle.x509.v {

    public static final C14744z f101683d = new C14744z(org.bouncycastle.openssl.i.f101873g);

    public oh.G f101684a = null;

    public int f101685b = 0;

    public InputStream f101686c = null;

    @Override
    public void a(InputStream inputStream) {
        this.f101686c = inputStream;
        this.f101684a = null;
        this.f101685b = 0;
        if (inputStream.markSupported()) {
            return;
        }
        this.f101686c = new BufferedInputStream(this.f101686c);
    }

    @Override
    public Object b() throws StreamParsingException {
        try {
            oh.G g10 = this.f101684a;
            if (g10 != null) {
                if (this.f101685b != g10.size()) {
                    return d();
                }
                this.f101684a = null;
                this.f101685b = 0;
                return null;
            }
            this.f101686c.mark(10);
            int read = this.f101686c.read();
            if (read == -1) {
                return null;
            }
            if (read != 48) {
                this.f101686c.reset();
                return f(this.f101686c);
            }
            this.f101686c.reset();
            return e(this.f101686c);
        } catch (Exception e10) {
            throw new StreamParsingException(e10.toString(), e10);
        }
    }

    @Override
    public Collection c() throws StreamParsingException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            Certificate certificate = (Certificate) b();
            if (certificate == null) {
                return arrayList;
            }
            arrayList.add(certificate);
        }
    }

    public final Certificate d() throws CertificateParsingException {
        if (this.f101684a == null) {
            return null;
        }
        while (this.f101685b < this.f101684a.size()) {
            oh.G g10 = this.f101684a;
            int i10 = this.f101685b;
            this.f101685b = i10 + 1;
            InterfaceC14516g H10 = g10.H(i10);
            if (H10 instanceof oh.E) {
                return new Y(C13505q.v(H10));
            }
        }
        return null;
    }

    public final Certificate e(InputStream inputStream) throws IOException, CertificateParsingException {
        oh.E e10 = (oh.E) new oh.r(inputStream).k();
        if (e10.size() <= 1 || !(e10.I(0) instanceof C14549x) || !e10.I(0).equals(Xh.t.f29019I1)) {
            return new Y(C13505q.v(e10));
        }
        this.f101684a = new Xh.D(oh.E.H((oh.M) e10.I(1), true)).v();
        return d();
    }

    public final Certificate f(InputStream inputStream) throws IOException, CertificateParsingException {
        oh.E b10 = f101683d.b(inputStream);
        if (b10 != null) {
            return new Y(C13505q.v(b10));
        }
        return null;
    }
}
