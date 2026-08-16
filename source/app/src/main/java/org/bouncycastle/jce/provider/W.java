package org.bouncycastle.jce.provider;

import hi.C13506s;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CertificateParsingException;
import java.util.ArrayList;
import java.util.Collection;
import org.bouncycastle.x509.util.StreamParsingException;

public class W extends org.bouncycastle.x509.v {

    public InputStream f101682a = null;

    @Override
    public void a(InputStream inputStream) {
        this.f101682a = inputStream;
        if (inputStream.markSupported()) {
            return;
        }
        this.f101682a = new BufferedInputStream(this.f101682a);
    }

    @Override
    public Object b() throws StreamParsingException {
        try {
            this.f101682a.mark(10);
            if (this.f101682a.read() == -1) {
                return null;
            }
            this.f101682a.reset();
            return d(this.f101682a);
        } catch (Exception e10) {
            throw new StreamParsingException(e10.toString(), e10);
        }
    }

    @Override
    public Collection c() throws StreamParsingException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            org.bouncycastle.x509.p pVar = (org.bouncycastle.x509.p) b();
            if (pVar == null) {
                return arrayList;
            }
            arrayList.add(pVar);
        }
    }

    public final org.bouncycastle.x509.p d(InputStream inputStream) throws IOException, CertificateParsingException {
        return new org.bouncycastle.x509.p(C13506s.v((oh.E) new oh.r(inputStream).k()));
    }
}
