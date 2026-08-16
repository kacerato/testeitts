package android.security;

import androidx.annotation.RecentlyNonNull;

public abstract class ConfirmationCallback {
    public ConfirmationCallback() {
        throw new RuntimeException("Stub!");
    }

    public void onConfirmed(@RecentlyNonNull byte[] dataThatWasConfirmed) {
        throw new RuntimeException("Stub!");
    }

    public void onDismissed() {
        throw new RuntimeException("Stub!");
    }

    public void onCanceled() {
        throw new RuntimeException("Stub!");
    }

    public void onError(Throwable e10) {
        throw new RuntimeException("Stub!");
    }
}
