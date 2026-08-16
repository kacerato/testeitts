package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class ApiException extends Exception {

    @NonNull
    @Deprecated
    protected final Status mStatus;

    public ApiException(@NonNull Status status) {
        super(status.b0() + ": " + (status.n0() != null ? status.n0() : ""));
        this.mStatus = status;
    }

    @NonNull
    public Status getStatus() {
        return this.mStatus;
    }

    public int getStatusCode() {
        return this.mStatus.b0();
    }

    @Nullable
    @Deprecated
    public String getStatusMessage() {
        return this.mStatus.n0();
    }
}
