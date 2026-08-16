package com.google.android.gms.common.api.internal;

import D0.C2475w;
import D0.N0;
import android.os.DeadObjectException;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11904b;

public final class A extends N0 {

    public final C11904b.a f61100b;

    public A(int i10, C11904b.a aVar) {
        super(i10);
        this.f61100b = (C11904b.a) G0.A.s(aVar, "Null methods are not runnable.");
    }

    @Override
    public final void a(@NonNull Status status) {
        try {
            this.f61100b.b(status);
        } catch (IllegalStateException e10) {
            Log.w("ApiCallRunner", "Exception reporting failure", e10);
        }
    }

    @Override
    public final void b(@NonNull Exception exc) {
        try {
            this.f61100b.b(new Status(10, exc.getClass().getSimpleName() + ": " + exc.getLocalizedMessage()));
        } catch (IllegalStateException e10) {
            Log.w("ApiCallRunner", "Exception reporting failure", e10);
        }
    }

    @Override
    public final void c(u uVar) throws DeadObjectException {
        try {
            this.f61100b.A(uVar.w());
        } catch (RuntimeException e10) {
            b(e10);
        }
    }

    @Override
    public final void d(@NonNull C2475w c2475w, boolean z10) {
        c2475w.c(this.f61100b, z10);
    }
}
