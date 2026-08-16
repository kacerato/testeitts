package java.security.cert;

import java.io.Serializable;
import java.security.GeneralSecurityException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertPathValidatorException.class
 */
public class CertPathValidatorException extends GeneralSecurityException {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertPathValidatorException$BasicReason.class
 */
    public enum BasicReason implements Reason {
        ALGORITHM_CONSTRAINED,
        EXPIRED,
        INVALID_SIGNATURE,
        NOT_YET_VALID,
        REVOKED,
        UNDETERMINED_REVOCATION_STATUS,
        UNSPECIFIED
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertPathValidatorException$Reason.class
 */
    public interface Reason extends Serializable {
    }

    public CertPathValidatorException() {
        throw new RuntimeException("Stub!");
    }

    public CertPathValidatorException(String msg) {
        throw new RuntimeException("Stub!");
    }

    public CertPathValidatorException(Throwable cause) {
        throw new RuntimeException("Stub!");
    }

    public CertPathValidatorException(String msg, Throwable cause) {
        throw new RuntimeException("Stub!");
    }

    public CertPathValidatorException(String msg, Throwable cause, CertPath certPath, int index) {
        throw new RuntimeException("Stub!");
    }

    public CertPathValidatorException(String msg, Throwable cause, CertPath certPath, int index, Reason reason) {
        throw new RuntimeException("Stub!");
    }

    public CertPath getCertPath() {
        throw new RuntimeException("Stub!");
    }

    public int getIndex() {
        throw new RuntimeException("Stub!");
    }

    public Reason getReason() {
        throw new RuntimeException("Stub!");
    }
}
