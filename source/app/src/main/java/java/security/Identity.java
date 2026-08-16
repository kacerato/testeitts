package java.security;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/Identity.class
 */
@Deprecated
public abstract class Identity implements Principal, Serializable {
    public Identity() {
        throw new RuntimeException("Stub!");
    }

    public Identity(String name, IdentityScope scope) throws KeyManagementException {
        throw new RuntimeException("Stub!");
    }

    public Identity(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final String getName() {
        throw new RuntimeException("Stub!");
    }

    public final IdentityScope getScope() {
        throw new RuntimeException("Stub!");
    }

    public PublicKey getPublicKey() {
        throw new RuntimeException("Stub!");
    }

    public void setPublicKey(PublicKey key) throws KeyManagementException {
        throw new RuntimeException("Stub!");
    }

    public void setInfo(String info) {
        throw new RuntimeException("Stub!");
    }

    public String getInfo() {
        throw new RuntimeException("Stub!");
    }

    public void addCertificate(Certificate certificate) throws KeyManagementException {
        throw new RuntimeException("Stub!");
    }

    public void removeCertificate(Certificate certificate) throws KeyManagementException {
        throw new RuntimeException("Stub!");
    }

    public Certificate[] certificates() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean equals(Object identity) {
        throw new RuntimeException("Stub!");
    }

    protected boolean identityEquals(Identity identity) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public String toString(boolean detailed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
