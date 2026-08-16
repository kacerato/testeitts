package java.security;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.cert.CertificateException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Date;
import java.util.Enumeration;
import java.util.Set;
import javax.crypto.SecretKey;
import javax.security.auth.DestroyFailedException;
import javax.security.auth.Destroyable;
import javax.security.auth.callback.CallbackHandler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore.class
 */
public class KeyStore {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$LoadStoreParameter.class
 */
    public interface LoadStoreParameter {
        ProtectionParameter getProtectionParameter();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$ProtectionParameter.class
 */
    public interface ProtectionParameter {
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$PasswordProtection.class
 */
    public static class PasswordProtection implements ProtectionParameter, Destroyable {
        public PasswordProtection(char[] password) {
            throw new RuntimeException("Stub!");
        }

        public PasswordProtection(char[] password, String protectionAlgorithm, AlgorithmParameterSpec protectionParameters) {
            throw new RuntimeException("Stub!");
        }

        public String getProtectionAlgorithm() {
            throw new RuntimeException("Stub!");
        }

        public AlgorithmParameterSpec getProtectionParameters() {
            throw new RuntimeException("Stub!");
        }

        public synchronized char[] getPassword() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized void destroy() throws DestroyFailedException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized boolean isDestroyed() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$CallbackHandlerProtection.class
 */
    public static class CallbackHandlerProtection implements ProtectionParameter {
        public CallbackHandlerProtection(CallbackHandler handler) {
            throw new RuntimeException("Stub!");
        }

        public CallbackHandler getCallbackHandler() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$Entry.class
 */
    public interface Entry {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$Entry$Attribute.class
 */
        public interface Attribute {
            String getName();

            String getValue();
        }

        default Set<Attribute> getAttributes() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$PrivateKeyEntry.class
 */
    public static final class PrivateKeyEntry implements Entry {
        public PrivateKeyEntry(PrivateKey privateKey, java.security.cert.Certificate[] chain) {
            throw new RuntimeException("Stub!");
        }

        public PrivateKeyEntry(PrivateKey privateKey, java.security.cert.Certificate[] chain, Set<Entry.Attribute> attributes) {
            throw new RuntimeException("Stub!");
        }

        public PrivateKey getPrivateKey() {
            throw new RuntimeException("Stub!");
        }

        public java.security.cert.Certificate[] getCertificateChain() {
            throw new RuntimeException("Stub!");
        }

        public java.security.cert.Certificate getCertificate() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Set<Entry.Attribute> getAttributes() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$SecretKeyEntry.class
 */
    public static final class SecretKeyEntry implements Entry {
        public SecretKeyEntry(SecretKey secretKey) {
            throw new RuntimeException("Stub!");
        }

        public SecretKeyEntry(SecretKey secretKey, Set<Entry.Attribute> attributes) {
            throw new RuntimeException("Stub!");
        }

        public SecretKey getSecretKey() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Set<Entry.Attribute> getAttributes() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$TrustedCertificateEntry.class
 */
    public static final class TrustedCertificateEntry implements Entry {
        public TrustedCertificateEntry(java.security.cert.Certificate trustedCert) {
            throw new RuntimeException("Stub!");
        }

        public TrustedCertificateEntry(java.security.cert.Certificate trustedCert, Set<Entry.Attribute> attributes) {
            throw new RuntimeException("Stub!");
        }

        public java.security.cert.Certificate getTrustedCertificate() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Set<Entry.Attribute> getAttributes() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyStore$Builder.class
 */
    public static abstract class Builder {
        public abstract KeyStore getKeyStore() throws KeyStoreException;

        public abstract ProtectionParameter getProtectionParameter(String str) throws KeyStoreException;

        protected Builder() {
            throw new RuntimeException("Stub!");
        }

        public static Builder newInstance(KeyStore keyStore, ProtectionParameter protectionParameter) {
            throw new RuntimeException("Stub!");
        }

        public static Builder newInstance(String type, Provider provider, File file, ProtectionParameter protection) {
            throw new RuntimeException("Stub!");
        }

        public static Builder newInstance(String type, Provider provider, ProtectionParameter protection) {
            throw new RuntimeException("Stub!");
        }
    }

    protected KeyStore(KeyStoreSpi keyStoreSpi, Provider provider, String type) {
        throw new RuntimeException("Stub!");
    }

    public static KeyStore getInstance(String type) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public static KeyStore getInstance(String type, String provider) throws KeyStoreException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static KeyStore getInstance(String type, Provider provider) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public static final String getDefaultType() {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final String getType() {
        throw new RuntimeException("Stub!");
    }

    public final Key getKey(String alias, char[] password) throws KeyStoreException, NoSuchAlgorithmException, UnrecoverableKeyException {
        throw new RuntimeException("Stub!");
    }

    public final java.security.cert.Certificate[] getCertificateChain(String alias) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final java.security.cert.Certificate getCertificate(String alias) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final Date getCreationDate(String alias) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final void setKeyEntry(String alias, Key key, char[] password, java.security.cert.Certificate[] chain) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final void setKeyEntry(String alias, byte[] key, java.security.cert.Certificate[] chain) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final void setCertificateEntry(String alias, java.security.cert.Certificate cert) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final void deleteEntry(String alias) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final Enumeration<String> aliases() throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final boolean containsAlias(String alias) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final int size() throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final boolean isKeyEntry(String alias) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final boolean isCertificateEntry(String alias) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final String getCertificateAlias(java.security.cert.Certificate cert) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final void store(OutputStream stream, char[] password) throws KeyStoreException, IOException, NoSuchAlgorithmException, CertificateException {
        throw new RuntimeException("Stub!");
    }

    public final void store(LoadStoreParameter param) throws KeyStoreException, IOException, NoSuchAlgorithmException, CertificateException {
        throw new RuntimeException("Stub!");
    }

    public final void load(InputStream stream, char[] password) throws IOException, NoSuchAlgorithmException, CertificateException {
        throw new RuntimeException("Stub!");
    }

    public final void load(LoadStoreParameter param) throws IOException, NoSuchAlgorithmException, CertificateException {
        throw new RuntimeException("Stub!");
    }

    public final Entry getEntry(String alias, ProtectionParameter protParam) throws NoSuchAlgorithmException, UnrecoverableEntryException, KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final void setEntry(String alias, Entry entry, ProtectionParameter protParam) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final boolean entryInstanceOf(String alias, Class<? extends Entry> entryClass) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }
}
