package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.u;

public final class F<R extends u> extends BasePendingResult<R> {

    public final u f61031r;

    public F(u uVar) {
        super(Looper.getMainLooper());
        this.f61031r = uVar;
    }

    @Override
    public final R k(Status status) {
        if (status.b0() == this.f61031r.getStatus().b0()) {
            return (R) this.f61031r;
        }
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
