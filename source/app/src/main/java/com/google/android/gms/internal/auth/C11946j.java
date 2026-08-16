package com.google.android.gms.internal.auth;

import android.accounts.Account;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import t0.InterfaceC15361b;

public final class C11946j implements InterfaceC15361b.a {

    public static final Account f61775d = new Account("DUMMY_NAME", "com.google");

    public final Status f61776b;

    public final Account f61777c;

    public C11946j(Status status, @Nullable Account account) {
        this.f61776b = status;
        this.f61777c = account == null ? f61775d : account;
    }

    @Override
    public final Status getStatus() {
        return this.f61776b;
    }

    @Override
    public final Account h() {
        return this.f61777c;
    }
}
