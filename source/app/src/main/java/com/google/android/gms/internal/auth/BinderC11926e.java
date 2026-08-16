package com.google.android.gms.internal.auth;

import android.accounts.Account;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;

public final class BinderC11926e extends BinderC11942i {

    public final C11930f f61718e;

    public BinderC11926e(C11930f c11930f) {
        this.f61718e = c11930f;
    }

    @Override
    public final void N(@Nullable Account account) {
        this.f61718e.o(new C11946j(account != null ? Status.f61039g : C11958m.f61796a, account));
    }
}
