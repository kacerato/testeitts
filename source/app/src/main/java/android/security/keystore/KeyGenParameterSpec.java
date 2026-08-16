package android.security.keystore;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Date;
import javax.security.auth.x500.X500Principal;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/security/keystore/KeyGenParameterSpec.class
 */
public final class KeyGenParameterSpec implements AlgorithmParameterSpec {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/security/keystore/KeyGenParameterSpec$Builder.class
 */
    public static final class Builder {
        public Builder(String keystoreAlias, int purposes) {
            throw new RuntimeException("Stub!");
        }

        public Builder setKeySize(int keySize) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAlgorithmParameterSpec(AlgorithmParameterSpec spec) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCertificateSubject(X500Principal subject) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCertificateSerialNumber(BigInteger serialNumber) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCertificateNotBefore(Date date) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCertificateNotAfter(Date date) {
            throw new RuntimeException("Stub!");
        }

        public Builder setKeyValidityStart(Date startDate) {
            throw new RuntimeException("Stub!");
        }

        public Builder setKeyValidityEnd(Date endDate) {
            throw new RuntimeException("Stub!");
        }

        public Builder setKeyValidityForOriginationEnd(Date endDate) {
            throw new RuntimeException("Stub!");
        }

        public Builder setKeyValidityForConsumptionEnd(Date endDate) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDigests(String... digests) {
            throw new RuntimeException("Stub!");
        }

        public Builder setEncryptionPaddings(String... paddings) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSignaturePaddings(String... paddings) {
            throw new RuntimeException("Stub!");
        }

        public Builder setBlockModes(String... blockModes) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRandomizedEncryptionRequired(boolean required) {
            throw new RuntimeException("Stub!");
        }

        public Builder setUserAuthenticationRequired(boolean required) {
            throw new RuntimeException("Stub!");
        }

        public Builder setUserAuthenticationValidityDurationSeconds(int seconds) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAttestationChallenge(byte[] attestationChallenge) {
            throw new RuntimeException("Stub!");
        }

        public Builder setUserAuthenticationValidWhileOnBody(boolean remainsValid) {
            throw new RuntimeException("Stub!");
        }

        public Builder setInvalidatedByBiometricEnrollment(boolean invalidateKey) {
            throw new RuntimeException("Stub!");
        }

        public KeyGenParameterSpec build() {
            throw new RuntimeException("Stub!");
        }
    }

    KeyGenParameterSpec() {
        throw new RuntimeException("Stub!");
    }

    public String getKeystoreAlias() {
        throw new RuntimeException("Stub!");
    }

    public int getKeySize() {
        throw new RuntimeException("Stub!");
    }

    public AlgorithmParameterSpec getAlgorithmParameterSpec() {
        throw new RuntimeException("Stub!");
    }

    public X500Principal getCertificateSubject() {
        throw new RuntimeException("Stub!");
    }

    public BigInteger getCertificateSerialNumber() {
        throw new RuntimeException("Stub!");
    }

    public Date getCertificateNotBefore() {
        throw new RuntimeException("Stub!");
    }

    public Date getCertificateNotAfter() {
        throw new RuntimeException("Stub!");
    }

    public Date getKeyValidityStart() {
        throw new RuntimeException("Stub!");
    }

    public Date getKeyValidityForConsumptionEnd() {
        throw new RuntimeException("Stub!");
    }

    public Date getKeyValidityForOriginationEnd() {
        throw new RuntimeException("Stub!");
    }

    public int getPurposes() {
        throw new RuntimeException("Stub!");
    }

    public String[] getDigests() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDigestsSpecified() {
        throw new RuntimeException("Stub!");
    }

    public String[] getEncryptionPaddings() {
        throw new RuntimeException("Stub!");
    }

    public String[] getSignaturePaddings() {
        throw new RuntimeException("Stub!");
    }

    public String[] getBlockModes() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRandomizedEncryptionRequired() {
        throw new RuntimeException("Stub!");
    }

    public boolean isUserAuthenticationRequired() {
        throw new RuntimeException("Stub!");
    }

    public int getUserAuthenticationValidityDurationSeconds() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getAttestationChallenge() {
        throw new RuntimeException("Stub!");
    }

    public boolean isUserAuthenticationValidWhileOnBody() {
        throw new RuntimeException("Stub!");
    }

    public boolean isInvalidatedByBiometricEnrollment() {
        throw new RuntimeException("Stub!");
    }
}
