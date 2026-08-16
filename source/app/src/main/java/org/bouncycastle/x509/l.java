package org.bouncycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Extension;
import java.util.Date;

public interface l extends X509Extension {
    j[] b(String str);

    void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException;

    void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException;

    b f();

    j[] getAttributes();

    byte[] getEncoded() throws IOException;

    a getHolder();

    boolean[] getIssuerUniqueID();

    Date getNotAfter();

    Date getNotBefore();

    BigInteger getSerialNumber();

    byte[] getSignature();

    int getVersion();

    void verify(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException;
}
