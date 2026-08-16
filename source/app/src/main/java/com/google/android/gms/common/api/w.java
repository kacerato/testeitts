package com.google.android.gms.common.api;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.u;

public abstract class w<R extends u> implements v<R> {
    @Override
    @C0.a
    public final void a(@NonNull R r10) {
        Status status = r10.getStatus();
        if (status.x0()) {
            c(r10);
            return;
        }
        b(status);
        if (r10 instanceof r) {
            try {
                ((r) r10).release();
            } catch (RuntimeException e10) {
                Log.w("ResultCallbacks", "Unable to release ".concat(String.valueOf(r10)), e10);
            }
        }
    }

    public abstract void b(@NonNull Status status);

    public abstract void c(@NonNull R r10);
}
