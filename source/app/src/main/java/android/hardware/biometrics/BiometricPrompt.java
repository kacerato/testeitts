package android.hardware.biometrics;

import android.content.Context;
import android.content.DialogInterface;
import android.os.CancellationSignal;
import androidx.annotation.RecentlyNonNull;
import java.security.Signature;
import java.util.concurrent.Executor;
import javax.crypto.Cipher;
import javax.crypto.Mac;

public class BiometricPrompt {
    public static final int BIOMETRIC_ACQUIRED_GOOD = 0;
    public static final int BIOMETRIC_ACQUIRED_IMAGER_DIRTY = 3;
    public static final int BIOMETRIC_ACQUIRED_INSUFFICIENT = 2;
    public static final int BIOMETRIC_ACQUIRED_PARTIAL = 1;
    public static final int BIOMETRIC_ACQUIRED_TOO_FAST = 5;
    public static final int BIOMETRIC_ACQUIRED_TOO_SLOW = 4;
    public static final int BIOMETRIC_ERROR_CANCELED = 5;
    public static final int BIOMETRIC_ERROR_HW_NOT_PRESENT = 12;
    public static final int BIOMETRIC_ERROR_HW_UNAVAILABLE = 1;
    public static final int BIOMETRIC_ERROR_LOCKOUT = 7;
    public static final int BIOMETRIC_ERROR_LOCKOUT_PERMANENT = 9;
    public static final int BIOMETRIC_ERROR_NO_BIOMETRICS = 11;
    public static final int BIOMETRIC_ERROR_NO_SPACE = 4;
    public static final int BIOMETRIC_ERROR_TIMEOUT = 3;
    public static final int BIOMETRIC_ERROR_UNABLE_TO_PROCESS = 2;
    public static final int BIOMETRIC_ERROR_USER_CANCELED = 10;
    public static final int BIOMETRIC_ERROR_VENDOR = 8;

    BiometricPrompt() {
        throw new RuntimeException("Stub!");
    }

    public void authenticate(@RecentlyNonNull CryptoObject crypto, @RecentlyNonNull CancellationSignal cancel, @RecentlyNonNull Executor executor, @RecentlyNonNull AuthenticationCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void authenticate(@RecentlyNonNull CancellationSignal cancel, @RecentlyNonNull Executor executor, @RecentlyNonNull AuthenticationCallback callback) {
        throw new RuntimeException("Stub!");
    }

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

    public static class AuthenticationResult {
        AuthenticationResult() {
            throw new RuntimeException("Stub!");
        }

        public CryptoObject getCryptoObject() {
            throw new RuntimeException("Stub!");
        }
    }

    public static class Builder {
        public Builder(Context context) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTitle(@RecentlyNonNull CharSequence title) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSubtitle(@RecentlyNonNull CharSequence subtitle) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDescription(@RecentlyNonNull CharSequence description) {
            throw new RuntimeException("Stub!");
        }

        public Builder setNegativeButton(@RecentlyNonNull CharSequence text, @RecentlyNonNull Executor executor, @RecentlyNonNull DialogInterface.OnClickListener listener) {
            throw new RuntimeException("Stub!");
        }

        public BiometricPrompt build() {
            throw new RuntimeException("Stub!");
        }
    }

    public static final class CryptoObject {
        public CryptoObject(@RecentlyNonNull Signature signature) {
            throw new RuntimeException("Stub!");
        }

        public CryptoObject(@RecentlyNonNull Cipher cipher) {
            throw new RuntimeException("Stub!");
        }

        public CryptoObject(@RecentlyNonNull Mac mac) {
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
}
