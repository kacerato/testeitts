package org.bouncycastle.jcajce.provider.asymmetric.x509;

import Xh.D;
import Xh.t;
import dk.C12947c;
import dk.InterfaceC12950f;
import fm.C13260d;
import hi.C13505q;
import hi.r;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactorySpi;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import oh.C14549x;
import oh.E;
import oh.G;
import oh.InterfaceC14516g;
import oh.M;

public class CertificateFactory extends CertificateFactorySpi {

    public static final b f101336h = new b(org.bouncycastle.openssl.i.f101873g);

    public static final b f101337i = new b("CRL");

    public static final b f101338j = new b(org.bouncycastle.openssl.i.f101877k);

    public final InterfaceC12950f f101339a = new C12947c();

    public G f101340b = null;

    public int f101341c = 0;

    public InputStream f101342d = null;

    public G f101343e = null;

    public int f101344f = 0;

    public InputStream f101345g = null;

    public static class ExCertificateException extends CertificateException {
        private Throwable cause;

        public ExCertificateException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }

        public ExCertificateException(Throwable th2) {
            this.cause = th2;
        }
    }

    public CRL a(r rVar) throws CRLException {
        return new X509CRLObject(this.f101339a, rVar);
    }

    public final CRL b(InputStream inputStream, boolean z10) throws CRLException {
        InputStream inputStream2 = this.f101345g;
        if (inputStream2 == null || inputStream2 != inputStream) {
            this.f101345g = inputStream;
            this.f101343e = null;
            this.f101344f = 0;
        }
        try {
            G g10 = this.f101343e;
            if (g10 != null) {
                if (this.f101344f != g10.size()) {
                    return d();
                }
                this.f101343e = null;
                this.f101344f = 0;
                return null;
            }
            if (!inputStream.markSupported()) {
                inputStream = new ByteArrayInputStream(C13260d.e(inputStream));
            }
            inputStream.mark(1);
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            inputStream.reset();
            return read != 48 ? j(inputStream, z10) : h(new oh.r(inputStream, true));
        } catch (CRLException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new CRLException(e11.toString());
        }
    }

    public final Certificate c(InputStream inputStream, boolean z10) throws CertificateException {
        InputStream inputStream2 = this.f101342d;
        if (inputStream2 == null || inputStream2 != inputStream) {
            this.f101342d = inputStream;
            this.f101340b = null;
            this.f101341c = 0;
        }
        try {
            G g10 = this.f101340b;
            if (g10 != null) {
                if (this.f101341c != g10.size()) {
                    return f();
                }
                this.f101340b = null;
                this.f101341c = 0;
                return null;
            }
            if (!inputStream.markSupported()) {
                inputStream = new ByteArrayInputStream(C13260d.e(inputStream));
            }
            inputStream.mark(1);
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            inputStream.reset();
            return read != 48 ? k(inputStream, z10) : i(new oh.r(inputStream));
        } catch (Exception e10) {
            throw new ExCertificateException("parsing issue: " + e10.getMessage(), e10);
        }
    }

    public final CRL d() throws CRLException {
        G g10 = this.f101343e;
        if (g10 == null || this.f101344f >= g10.size()) {
            return null;
        }
        G g11 = this.f101343e;
        int i10 = this.f101344f;
        this.f101344f = i10 + 1;
        return a(r.u(g11.H(i10)));
    }

    public final CRL e(E e10) throws CRLException {
        if (e10 == null) {
            return null;
        }
        if (e10.size() <= 1 || !(e10.I(0) instanceof C14549x) || !e10.I(0).equals(t.f29019I1)) {
            return a(r.u(e10));
        }
        this.f101343e = D.z(E.H((M) e10.I(1), true)).u();
        return d();
    }

    @Override
    public CRL engineGenerateCRL(InputStream inputStream) throws CRLException {
        return b(inputStream, true);
    }

    @Override
    public Collection engineGenerateCRLs(InputStream inputStream) throws CRLException {
        ArrayList arrayList = new ArrayList();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        while (true) {
            CRL b10 = b(bufferedInputStream, arrayList.isEmpty());
            if (b10 == null) {
                return arrayList;
            }
            arrayList.add(b10);
        }
    }

    @Override
    public CertPath engineGenerateCertPath(InputStream inputStream) throws CertificateException {
        return engineGenerateCertPath(inputStream, "PkiPath");
    }

    @Override
    public Certificate engineGenerateCertificate(InputStream inputStream) throws CertificateException {
        return c(inputStream, true);
    }

    @Override
    public Collection engineGenerateCertificates(InputStream inputStream) throws CertificateException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ArrayList arrayList = new ArrayList();
        while (true) {
            Certificate c10 = c(bufferedInputStream, arrayList.isEmpty());
            if (c10 == null) {
                return arrayList;
            }
            arrayList.add(c10);
        }
    }

    @Override
    public Iterator engineGetCertPathEncodings() {
        return c.f101362d.iterator();
    }

    public final Certificate f() throws CertificateParsingException {
        if (this.f101340b == null) {
            return null;
        }
        while (this.f101341c < this.f101340b.size()) {
            G g10 = this.f101340b;
            int i10 = this.f101341c;
            this.f101341c = i10 + 1;
            InterfaceC14516g H10 = g10.H(i10);
            if (H10 instanceof E) {
                return new X509CertificateObject(this.f101339a, C13505q.v(H10));
            }
        }
        return null;
    }

    public final Certificate g(E e10) throws CertificateParsingException {
        if (e10 == null) {
            return null;
        }
        if (e10.size() <= 1 || !(e10.I(0) instanceof C14549x) || !e10.I(0).equals(t.f29019I1)) {
            return new X509CertificateObject(this.f101339a, C13505q.v(e10));
        }
        this.f101340b = D.z(E.H((M) e10.I(1), true)).v();
        return f();
    }

    public final CRL h(oh.r rVar) throws IOException, CRLException {
        return e(E.G(rVar.k()));
    }

    public final Certificate i(oh.r rVar) throws IOException, CertificateParsingException {
        return g(E.G(rVar.k()));
    }

    public final CRL j(InputStream inputStream, boolean z10) throws IOException, CRLException {
        return e(f101337i.c(inputStream, z10));
    }

    public final Certificate k(InputStream inputStream, boolean z10) throws IOException, CertificateParsingException {
        return g(f101336h.c(inputStream, z10));
    }

    @Override
    public CertPath engineGenerateCertPath(InputStream inputStream, String str) throws CertificateException {
        return new c(inputStream, str);
    }

    @Override
    public CertPath engineGenerateCertPath(List list) throws CertificateException {
        for (Object obj : list) {
            if (obj != null && !(obj instanceof X509Certificate)) {
                throw new CertificateException("list contains non X509Certificate object while creating CertPath\n" + obj.toString());
            }
        }
        return new c(list);
    }
}
