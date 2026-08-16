package com.google.android.gms.common.api.internal;

import D0.C2481z;
import D0.J0;
import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.internal.C11904b;
import sm.InterfaceC15358c;

public final class v extends C2481z {

    @InterfaceC15358c
    public final AbstractC11907k f61261f;

    public v(AbstractC11907k abstractC11907k) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f61261f = abstractC11907k;
    }

    @Override
    public final void H(J0 j02) {
    }

    @Override
    public final void I(J0 j02) {
    }

    @Override
    public final <A extends C11894a.b, R extends com.google.android.gms.common.api.u, T extends C11904b.a<R, A>> T l(@NonNull T t10) {
        return (T) this.f61261f.M(t10);
    }

    @Override
    public final <A extends C11894a.b, T extends C11904b.a<? extends com.google.android.gms.common.api.u, A>> T m(@NonNull T t10) {
        return (T) this.f61261f.S(t10);
    }

    @Override
    public final Context q() {
        return this.f61261f.W();
    }

    @Override
    public final Looper r() {
        return this.f61261f.Z();
    }
}
