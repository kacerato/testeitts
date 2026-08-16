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

public final class C extends I0 {

    public final f.a f61119c;

    public C(f.a aVar, C15791l c15791l) {
        super(4, c15791l);
        this.f61119c = aVar;
    }

    @Override
    public final void d(@NonNull C2475w c2475w, boolean z10) {
    }

    @Override
    public final boolean f(u uVar) {
        C2468s0 c2468s0 = (C2468s0) uVar.y().get(this.f61119c);
        return c2468s0 != null && c2468s0.f4706a.f();
    }

    @Override
    @Nullable
    public final C2320e[] g(u uVar) {
        C2468s0 c2468s0 = (C2468s0) uVar.y().get(this.f61119c);
        if (c2468s0 == null) {
            return null;
        }
        return c2468s0.f4706a.c();
    }

    @Override
    public final void h(u uVar) throws RemoteException {
        C2468s0 c2468s0 = (C2468s0) uVar.y().remove(this.f61119c);
        if (c2468s0 == null) {
            this.f4564b.e(Boolean.FALSE);
            return;
        }
        c2468s0.f4707b.b(uVar.w(), this.f4564b);
        c2468s0.f4706a.a();
    }
}
