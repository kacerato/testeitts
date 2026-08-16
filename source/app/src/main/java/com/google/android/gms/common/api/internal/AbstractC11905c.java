package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.f;
import com.google.android.gms.common.data.DataHolder;

@C0.a
public abstract class AbstractC11905c<L> implements f.b<L> {

    public final DataHolder f61127a;

    @C0.a
    public AbstractC11905c(@NonNull DataHolder dataHolder) {
        this.f61127a = dataHolder;
    }

    @Override
    @C0.a
    public final void a(@NonNull L l10) {
        c(l10, this.f61127a);
    }

    @Override
    @C0.a
    public void b() {
        DataHolder dataHolder = this.f61127a;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @C0.a
    public abstract void c(@NonNull L l10, @NonNull DataHolder dataHolder);
}
