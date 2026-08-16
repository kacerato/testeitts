package com.google.android.gms.internal.auth;

import android.accounts.Account;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.Status;
import t0.C15360a;
import t0.InterfaceC15361b;

public final class C11958m implements InterfaceC15361b {

    public static final Status f61796a = new Status(13);

    @Override
    public final void a(AbstractC11908l abstractC11908l, boolean z10) {
        c(abstractC11908l, z10);
    }

    @Override
    public final com.google.android.gms.common.api.p<InterfaceC15361b.a> b(AbstractC11908l abstractC11908l, String str) {
        return abstractC11908l.m(new C11930f(this, C15360a.f109693a, abstractC11908l, str));
    }

    @Override
    public final com.google.android.gms.common.api.p<com.google.android.gms.common.api.u> c(AbstractC11908l abstractC11908l, boolean z10) {
        return abstractC11908l.m(new C11922d(this, C15360a.f109693a, abstractC11908l, z10));
    }

    @Override
    public final com.google.android.gms.common.api.p<com.google.android.gms.common.api.u> d(AbstractC11908l abstractC11908l, Account account) {
        return abstractC11908l.m(new C11938h(this, C15360a.f109693a, abstractC11908l, account));
    }
}
