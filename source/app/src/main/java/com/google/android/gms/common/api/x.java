package com.google.android.gms.common.api;

import D0.C2478x0;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.u;

public abstract class x<R extends u, S extends u> {
    @NonNull
    public final p<S> a(@NonNull Status status) {
        return new C2478x0(status);
    }

    @NonNull
    public Status b(@NonNull Status status) {
        return status;
    }

    @Nullable
    @WorkerThread
    public abstract p<S> c(@NonNull R r10);
}
