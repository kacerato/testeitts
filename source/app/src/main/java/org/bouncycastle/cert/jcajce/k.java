package org.bouncycastle.cert.jcajce;

import fi.C13228d;
import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13486b;
import hi.C13499k;
import hi.g0;
import hi.h0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import javax.security.auth.x500.X500Principal;
import li.C14148j;
import oh.AbstractC14551y;
import oh.B;
import oh.C14549x;
import oh.E;
import oh.J;

public class k extends C14148j {

    public static class a implements Qk.p {

        public ByteArrayOutputStream f100444a = new ByteArrayOutputStream();

        public MessageDigest f100445b;

        public a(MessageDigest messageDigest) {
            this.f100445b = messageDigest;
        }

        @Override
        public C13486b a() {
            return new C13486b(Wh.b.f27785i);
        }

        @Override
        public byte[] b() {
            byte[] digest = this.f100445b.digest(this.f100444a.toByteArray());
            this.f100444a.reset();
            return digest;
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f100444a;
        }
    }

    public k() throws NoSuchAlgorithmException {
        super(new a(MessageDigest.getInstance("SHA1")));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0038. Please report as an issue. */
    public static Collection n(byte[] bArr) throws CertificateParsingException {
        String string;
        if (bArr == null) {
            return Collections.EMPTY_LIST;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Enumeration J10 = E.G(q(bArr)).J();
            while (J10.hasMoreElements()) {
                C13481E v10 = C13481E.v(J10.nextElement());
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(org.bouncycastle.util.k.j(v10.g()));
                switch (v10.g()) {
                    case 0:
                    case 3:
                    case 5:
                        arrayList2.add(v10.getEncoded());
                        arrayList.add(arrayList2);
                    case 1:
                    case 2:
                    case 6:
                        string = ((J) v10.x()).getString();
                        arrayList2.add(string);
                        arrayList.add(arrayList2);
                    case 4:
                        string = C13228d.w(gi.e.f89996V, v10.x()).toString();
                        arrayList2.add(string);
                        arrayList.add(arrayList2);
                    case 7:
                        try {
                            string = InetAddress.getByAddress(AbstractC14551y.F(v10.x()).H()).getHostAddress();
                            arrayList2.add(string);
                            arrayList.add(arrayList2);
                        } catch (UnknownHostException unused) {
                        }
                    case 8:
                        string = C14549x.K(v10.x()).J();
                        arrayList2.add(string);
                        arrayList.add(arrayList2);
                    default:
                        throw new IOException("Bad tag number: " + v10.g());
                }
            }
            return Collections.unmodifiableCollection(arrayList);
        } catch (Exception e10) {
            throw new CertificateParsingException(e10.getMessage());
        }
    }

    public static Collection o(X509Certificate x509Certificate) throws CertificateParsingException {
        return n(x509Certificate.getExtensionValue(C13478B.f90534j.J()));
    }

    public static Collection p(X509Certificate x509Certificate) throws CertificateParsingException {
        return n(x509Certificate.getExtensionValue(C13478B.f90533i.J()));
    }

    public static B q(byte[] bArr) throws IOException {
        return B.B(AbstractC14551y.F(bArr).H());
    }

    public C13499k h(PublicKey publicKey) {
        return super.b(h0.w(publicKey.getEncoded()));
    }

    public C13499k i(PublicKey publicKey, C13482F c13482f, BigInteger bigInteger) {
        return super.c(h0.w(publicKey.getEncoded()), c13482f, bigInteger);
    }

    public C13499k j(PublicKey publicKey, X500Principal x500Principal, BigInteger bigInteger) {
        return super.c(h0.w(publicKey.getEncoded()), new C13482F(new C13481E(C13228d.x(x500Principal.getEncoded()))), bigInteger);
    }

    public C13499k k(X509Certificate x509Certificate) throws CertificateEncodingException {
        return super.d(new i(x509Certificate));
    }

    public g0 l(PublicKey publicKey) {
        return super.e(h0.w(publicKey.getEncoded()));
    }

    public g0 m(PublicKey publicKey) {
        return super.f(h0.w(publicKey.getEncoded()));
    }

    public k(Qk.p pVar) {
        super(pVar);
    }
}
