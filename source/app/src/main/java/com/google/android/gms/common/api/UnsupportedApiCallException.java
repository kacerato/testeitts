package com.google.android.gms.common.api;

import B0.C2320e;
import androidx.annotation.NonNull;

public final class UnsupportedApiCallException extends UnsupportedOperationException {
    private final C2320e zza;

    @C0.a
    public UnsupportedApiCallException(@NonNull C2320e c2320e) {
        this.zza = c2320e;
    }

    @Override
    @NonNull
    public String getMessage() {
        return "Missing ".concat(String.valueOf(this.zza));
    }
}
