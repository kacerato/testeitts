package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.u;

public final class G<R extends u> extends BasePendingResult<R> {

    public final u f61032r;

    public G(AbstractC11908l abstractC11908l, u uVar) {
        super(abstractC11908l);
        this.f61032r = uVar;
    }

    @Override
    public final R k(Status status) {
        return (R) this.f61032r;
    }
}
