package com.google.android.gms.common.api;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.u;

public final class H<R extends u> extends BasePendingResult<R> {
    public H(@Nullable AbstractC11908l abstractC11908l) {
        super(abstractC11908l);
    }

    @Override
    public final R k(Status status) {
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
