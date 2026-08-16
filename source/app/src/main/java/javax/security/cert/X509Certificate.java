package javax.security.cert;

import java.io.InputStream;
import java.math.BigInteger;
import java.security.Principal;
import java.util.Date;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/security/cert/X509Certificate.class
 */
public abstract class X509Certificate extends Certificate {
    public abstract void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException;

    public abstract void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException;

    public abstract int getVersion();

    public abstract BigInteger getSerialNumber();

    public abstract Principal getIssuerDN();

    public abstract Principal getSubjectDN();

    public abstract Date getNotBefore();

    public abstract Date getNotAfter();

    public abstract String getSigAlgName();

    public abstract String getSigAlgOID();

    public abstract byte[] getSigAlgParams();

    public X509Certificate() {
        throw new RuntimeException("Stub!");
    }

    public static final X509Certificate getInstance(InputStream inStream) throws CertificateException {
        throw new RuntimeException("Stub!");
    }

    public static final X509Certificate getInstance(byte[] certData) throws CertificateException {
        throw new RuntimeException("Stub!");
    }
}
