package java.security.cert;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertPath.class
 */
public abstract class CertPath implements Serializable {
    public abstract Iterator<String> getEncodings();

    public abstract byte[] getEncoded() throws CertificateEncodingException;

    public abstract byte[] getEncoded(String str) throws CertificateEncodingException;

    public abstract List<? extends Certificate> getCertificates();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertPath$CertPathRep.class
 */
    protected static class CertPathRep implements Serializable {
        protected CertPathRep(String type, byte[] data) {
            throw new RuntimeException("Stub!");
        }

        protected Object readResolve() throws ObjectStreamException {
            throw new RuntimeException("Stub!");
        }
    }

    public CertPath(String type) {
        throw new RuntimeException("Stub!");
    }

    public String getType() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object other) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    protected Object writeReplace() throws ObjectStreamException {
        throw new RuntimeException("Stub!");
    }
}
