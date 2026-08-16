package android.hardware.fingerprint;

import android.os.CancellationSignal;
import android.os.Handler;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/fingerprint/FingerprintManager.class
 */
public class FingerprintManager {
    public static final int FINGERPRINT_ACQUIRED_GOOD = 0;
    public static final int FINGERPRINT_ACQUIRED_IMAGER_DIRTY = 3;
    public static final int FINGERPRINT_ACQUIRED_INSUFFICIENT = 2;
    public static final int FINGERPRINT_ACQUIRED_PARTIAL = 1;
    public static final int FINGERPRINT_ACQUIRED_TOO_FAST = 5;
    public static final int FINGERPRINT_ACQUIRED_TOO_SLOW = 4;
    public static final int FINGERPRINT_ERROR_CANCELED = 5;
    public static final int FINGERPRINT_ERROR_HW_UNAVAILABLE = 1;
    public static final int FINGERPRINT_ERROR_LOCKOUT = 7;
    public static final int FINGERPRINT_ERROR_NO_SPACE = 4;
    public static final int FINGERPRINT_ERROR_TIMEOUT = 3;
    public static final int FINGERPRINT_ERROR_UNABLE_TO_PROCESS = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/fingerprint/FingerprintManager$CryptoObject.class
 */
    public static final class CryptoObject {
        public CryptoObject(Signature signature) {
            throw new RuntimeException("Stub!");
        }

        public CryptoObject(Cipher cipher) {
            throw new RuntimeException("Stub!");
        }

        public CryptoObject(Mac mac) {
            throw new RuntimeException("Stub!");
        }

        public Signature getSignature() {
            throw new RuntimeException("Stub!");
        }

        public Cipher getCipher() {
            throw new RuntimeException("Stub!");
        }

        public Mac getMac() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/fingerprint/FingerprintManager$AuthenticationResult.class
 */
    public static class AuthenticationResult {
        AuthenticationResult() {
            throw new RuntimeException("Stub!");
        }

        public CryptoObject getCryptoObject() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/fingerprint/FingerprintManager$AuthenticationCallback.class
 */
    public static abstract class AuthenticationCallback {
        public AuthenticationCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onAuthenticationError(int errorCode, CharSequence errString) {
            throw new RuntimeException("Stub!");
        }

        public void onAuthenticationHelp(int helpCode, CharSequence helpString) {
            throw new RuntimeException("Stub!");
        }

        public void onAuthenticationSucceeded(AuthenticationResult result) {
            throw new RuntimeException("Stub!");
        }

        public void onAuthenticationFailed() {
            throw new RuntimeException("Stub!");
        }
    }

    FingerprintManager() {
        throw new RuntimeException("Stub!");
    }

    public void authenticate(CryptoObject crypto, CancellationSignal cancel, int flags, AuthenticationCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasEnrolledFingerprints() {
        throw new RuntimeException("Stub!");
    }

    public boolean isHardwareDetected() {
        throw new RuntimeException("Stub!");
    }
}
