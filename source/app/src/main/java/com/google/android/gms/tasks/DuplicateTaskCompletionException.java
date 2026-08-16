package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import v1.AbstractC15790k;

public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, @Nullable Throwable th2) {
        super(str, th2);
    }

    @NonNull
    public static IllegalStateException of(@NonNull AbstractC15790k<?> abstractC15790k) {
        if (!abstractC15790k.u()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception q10 = abstractC15790k.q();
        return new DuplicateTaskCompletionException("Complete with: ".concat(q10 != null ? "failure" : abstractC15790k.v() ? "result ".concat(String.valueOf(abstractC15790k.r())) : abstractC15790k.t() ? "cancellation" : "unknown issue"), q10);
    }
}
