package org.bouncycastle.jcajce.provider.asymmetric.x509;

import Xh.D;
import Xh.t;
import dk.C12947c;
import dk.InterfaceC12950f;
import gm.C13401b;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.security.NoSuchProviderException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.security.auth.x500.X500Principal;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.I0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.r;

public class c extends CertPath {

    public static final List f101362d;

    public final InterfaceC12950f f101363b;

    public List f101364c;

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add("PkiPath");
        arrayList.add("PEM");
        arrayList.add(org.bouncycastle.openssl.i.f101877k);
        f101362d = Collections.unmodifiableList(arrayList);
    }

    public c(InputStream inputStream, String str) throws CertificateException {
        super("X.509");
        C12947c c12947c = new C12947c();
        this.f101363b = c12947c;
        try {
            if (!str.equalsIgnoreCase("PkiPath")) {
                if (!str.equalsIgnoreCase(org.bouncycastle.openssl.i.f101877k) && !str.equalsIgnoreCase("PEM")) {
                    throw new CertificateException("unsupported encoding: " + str);
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                this.f101364c = new ArrayList();
                java.security.cert.CertificateFactory r10 = c12947c.r("X.509");
                while (true) {
                    Certificate generateCertificate = r10.generateCertificate(bufferedInputStream);
                    if (generateCertificate == null) {
                        break;
                    } else {
                        this.f101364c.add(generateCertificate);
                    }
                }
            } else {
                B k10 = new r(inputStream).k();
                if (!(k10 instanceof E)) {
                    throw new CertificateException("input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath");
                }
                Enumeration J10 = ((E) k10).J();
                this.f101364c = new ArrayList();
                java.security.cert.CertificateFactory r11 = c12947c.r("X.509");
                while (J10.hasMoreElements()) {
                    this.f101364c.add(0, r11.generateCertificate(new ByteArrayInputStream(((InterfaceC14516g) J10.nextElement()).r().s(InterfaceC14520i.f98892a))));
                }
            }
            this.f101364c = a(this.f101364c);
        } catch (IOException e10) {
            throw new CertificateException("IOException throw while decoding CertPath:\n" + e10.toString());
        } catch (NoSuchProviderException e11) {
            throw new CertificateException("BouncyCastle provider not found while trying to get a CertificateFactory:\n" + e11.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List a(List list) {
        if (list.size() < 2) {
            return list;
        }
        X500Principal issuerX500Principal = ((X509Certificate) list.get(0)).getIssuerX500Principal();
        for (int i10 = 1; i10 != list.size(); i10++) {
            if (!issuerX500Principal.equals(((X509Certificate) list.get(i10)).getSubjectX500Principal())) {
                ArrayList arrayList = new ArrayList(list.size());
                ArrayList arrayList2 = new ArrayList(list);
                for (int i11 = 0; i11 < list.size(); i11++) {
                    X509Certificate x509Certificate = (X509Certificate) list.get(i11);
                    X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
                    int i12 = 0;
                    while (true) {
                        if (i12 == list.size()) {
                            arrayList.add(x509Certificate);
                            list.remove(i11);
                            break;
                        }
                        if (((X509Certificate) list.get(i12)).getIssuerX500Principal().equals(subjectX500Principal)) {
                            break;
                        }
                        i12++;
                    }
                }
                if (arrayList.size() > 1) {
                    return arrayList2;
                }
                for (int i13 = 0; i13 != arrayList.size(); i13++) {
                    X500Principal issuerX500Principal2 = ((X509Certificate) arrayList.get(i13)).getIssuerX500Principal();
                    int i14 = 0;
                    while (true) {
                        if (i14 < list.size()) {
                            X509Certificate x509Certificate2 = (X509Certificate) list.get(i14);
                            if (issuerX500Principal2.equals(x509Certificate2.getSubjectX500Principal())) {
                                arrayList.add(x509Certificate2);
                                list.remove(i14);
                                break;
                            }
                            i14++;
                        }
                    }
                }
                return list.size() > 0 ? arrayList2 : arrayList;
            }
            issuerX500Principal = ((X509Certificate) list.get(i10)).getIssuerX500Principal();
        }
        return list;
    }

    public final B b(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new r(x509Certificate.getEncoded()).k();
        } catch (Exception e10) {
            throw new CertificateEncodingException("Exception while encoding certificate: " + e10.toString());
        }
    }

    public final byte[] c(InterfaceC14516g interfaceC14516g) throws CertificateEncodingException {
        try {
            return interfaceC14516g.r().s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new CertificateEncodingException("Exception thrown: " + ((Object) e10));
        }
    }

    @Override
    public List getCertificates() {
        return Collections.unmodifiableList(new ArrayList(this.f101364c));
    }

    @Override
    public byte[] getEncoded() throws CertificateEncodingException {
        Iterator encodings = getEncodings();
        if (!encodings.hasNext()) {
            return null;
        }
        Object next = encodings.next();
        if (next instanceof String) {
            return getEncoded((String) next);
        }
        return null;
    }

    @Override
    public Iterator getEncodings() {
        return f101362d.iterator();
    }

    public c(List list) {
        super("X.509");
        this.f101363b = new C12947c();
        this.f101364c = a(new ArrayList(list));
    }

    @Override
    public byte[] getEncoded(String str) throws CertificateEncodingException {
        if (str.equalsIgnoreCase("PkiPath")) {
            C14518h c14518h = new C14518h();
            List list = this.f101364c;
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                c14518h.a(b((X509Certificate) listIterator.previous()));
            }
            return c(new G0(c14518h));
        }
        int i10 = 0;
        if (str.equalsIgnoreCase(org.bouncycastle.openssl.i.f101877k)) {
            Xh.g gVar = new Xh.g(t.f29014G1, null);
            C14518h c14518h2 = new C14518h();
            while (i10 != this.f101364c.size()) {
                c14518h2.a(b((X509Certificate) this.f101364c.get(i10)));
                i10++;
            }
            return c(new Xh.g(t.f29019I1, new D(new C14539s(1L), new I0(), gVar, new I0(c14518h2), null, new I0())));
        }
        if (!str.equalsIgnoreCase("PEM")) {
            throw new CertificateEncodingException("unsupported encoding: " + str);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        gm.f fVar = new gm.f(new OutputStreamWriter(byteArrayOutputStream));
        while (i10 != this.f101364c.size()) {
            try {
                fVar.c(new C13401b(org.bouncycastle.openssl.i.f101873g, ((X509Certificate) this.f101364c.get(i10)).getEncoded()));
                i10++;
            } catch (Exception unused) {
                throw new CertificateEncodingException("can't encode certificate for PEM encoded path");
            }
        }
        fVar.close();
        return byteArrayOutputStream.toByteArray();
    }
}
