package android.security.keystore;

import java.security.KeyStore;
import java.util.Date;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/security/keystore/KeyProtection.class
 */
public final class KeyProtection implements KeyStore.ProtectionParameter {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/security/keystore/KeyProtection$Builder.class
 */
    public static final class Builder {
        public Builder(int purposes) {
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

        public Builder setEncryptionPaddings(String... paddings) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSignaturePaddings(String... paddings) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDigests(String... digests) {
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

        public Builder setUserAuthenticationValidWhileOnBody(boolean remainsValid) {
            throw new RuntimeException("Stub!");
        }

        public Builder setInvalidatedByBiometricEnrollment(boolean invalidateKey) {
            throw new RuntimeException("Stub!");
        }

        public KeyProtection build() {
            throw new RuntimeException("Stub!");
        }
    }

    KeyProtection() {
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

    public String[] getEncryptionPaddings() {
        throw new RuntimeException("Stub!");
    }

    public String[] getSignaturePaddings() {
        throw new RuntimeException("Stub!");
    }

    public String[] getDigests() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDigestsSpecified() {
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

    public boolean isUserAuthenticationValidWhileOnBody() {
        throw new RuntimeException("Stub!");
    }

    public boolean isInvalidatedByBiometricEnrollment() {
        throw new RuntimeException("Stub!");
    }
}
