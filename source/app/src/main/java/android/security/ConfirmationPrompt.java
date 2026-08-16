package android.security;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import java.util.concurrent.Executor;

public class ConfirmationPrompt {
    ConfirmationPrompt(Context context, CharSequence promptText, byte[] extraData) {
        throw new RuntimeException("Stub!");
    }

    public void presentPrompt(@RecentlyNonNull Executor executor, @RecentlyNonNull ConfirmationCallback callback) throws ConfirmationAlreadyPresentingException, ConfirmationNotAvailableException {
        throw new RuntimeException("Stub!");
    }

    public void cancelPrompt() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isSupported(Context context) {
        throw new RuntimeException("Stub!");
    }

    public static final class Builder {
        public Builder(Context context) {
            throw new RuntimeException("Stub!");
        }

        public Builder setPromptText(CharSequence promptText) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtraData(byte[] extraData) {
            throw new RuntimeException("Stub!");
        }

        public ConfirmationPrompt build() {
            throw new RuntimeException("Stub!");
        }
    }
}
