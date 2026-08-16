package android.security;

import android.content.Context;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Date;
import javax.security.auth.x500.X500Principal;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/security/KeyPairGeneratorSpec.class
 */
@Deprecated
public final class KeyPairGeneratorSpec implements AlgorithmParameterSpec {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/security/KeyPairGeneratorSpec$Builder.class
 */
    @Deprecated
    public static final class Builder {
        public Builder(Context context) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAlias(String alias) {
            throw new RuntimeException("Stub!");
        }

        public Builder setKeyType(String keyType) throws NoSuchAlgorithmException {
            throw new RuntimeException("Stub!");
        }

        public Builder setKeySize(int keySize) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAlgorithmParameterSpec(AlgorithmParameterSpec spec) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSubject(X500Principal subject) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSerialNumber(BigInteger serialNumber) {
            throw new RuntimeException("Stub!");
        }

        public Builder setStartDate(Date startDate) {
            throw new RuntimeException("Stub!");
        }

        public Builder setEndDate(Date endDate) {
            throw new RuntimeException("Stub!");
        }

        public Builder setEncryptionRequired() {
            throw new RuntimeException("Stub!");
        }

        public KeyPairGeneratorSpec build() {
            throw new RuntimeException("Stub!");
        }
    }

    KeyPairGeneratorSpec() {
        throw new RuntimeException("Stub!");
    }

    public Context getContext() {
        throw new RuntimeException("Stub!");
    }

    public String getKeystoreAlias() {
        throw new RuntimeException("Stub!");
    }

    public String getKeyType() {
        throw new RuntimeException("Stub!");
    }

    public int getKeySize() {
        throw new RuntimeException("Stub!");
    }

    public AlgorithmParameterSpec getAlgorithmParameterSpec() {
        throw new RuntimeException("Stub!");
    }

    public X500Principal getSubjectDN() {
        throw new RuntimeException("Stub!");
    }

    public BigInteger getSerialNumber() {
        throw new RuntimeException("Stub!");
    }

    public Date getStartDate() {
        throw new RuntimeException("Stub!");
    }

    public Date getEndDate() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEncryptionRequired() {
        throw new RuntimeException("Stub!");
    }
}
