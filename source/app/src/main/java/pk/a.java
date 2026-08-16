package Pk;

import Xh.v;
import hi.h0;
import java.io.IOException;
import java.security.Key;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.CRLException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;

public class a extends org.bouncycastle.openssl.b {

    public Object f21558e;

    public String f21559f;

    public char[] f21560g;

    public SecureRandom f21561h;

    public Provider f21562i;

    public a(Object obj) throws IOException {
        super(d(obj));
    }

    public static Object d(Object obj) throws IOException {
        if (obj instanceof X509Certificate) {
            try {
                return new org.bouncycastle.cert.jcajce.i((X509Certificate) obj);
            } catch (CertificateEncodingException e10) {
                throw new IllegalArgumentException("Cannot encode object: " + e10.toString());
            }
        }
        if (!(obj instanceof X509CRL)) {
            return obj instanceof KeyPair ? d(((KeyPair) obj).getPrivate()) : obj instanceof PrivateKey ? v.v(((Key) obj).getEncoded()) : obj instanceof PublicKey ? h0.w(((PublicKey) obj).getEncoded()) : obj;
        }
        try {
            return new org.bouncycastle.cert.jcajce.h((X509CRL) obj);
        } catch (CRLException e11) {
            throw new IllegalArgumentException("Cannot encode object: " + e11.toString());
        }
    }

    public a(Object obj, org.bouncycastle.openssl.f fVar) throws IOException {
        super(d(obj), fVar);
    }
}
