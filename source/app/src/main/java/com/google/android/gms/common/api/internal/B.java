package com.google.android.gms.common.api.internal;

import B0.C2320e;
import D0.C2468s0;
import D0.C2475w;
import D0.I0;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.f;
import v1.C15791l;

public final class B extends I0 {

    public final C2468s0 f61101c;

    public B(C2468s0 c2468s0, C15791l c15791l) {
        super(3, c15791l);
        this.f61101c = c2468s0;
    }

    @Override
    public final void d(@NonNull C2475w c2475w, boolean z10) {
    }

    @Override
    public final boolean f(u uVar) {
        return this.f61101c.f4706a.f();
    }

    @Override
    @Nullable
    public final C2320e[] g(u uVar) {
        return this.f61101c.f4706a.c();
    }

    @Override
    public final void h(u uVar) throws RemoteException {
        this.f61101c.f4706a.d(uVar.w(), this.f4564b);
        f.a b10 = this.f61101c.f4706a.b();
        if (b10 != null) {
            uVar.y().put(b10, this.f61101c);
        }
    }
}
