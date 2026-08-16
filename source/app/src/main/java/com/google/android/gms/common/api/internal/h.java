package com.google.android.gms.common.api.internal;

import B0.C2320e;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.C11894a.b;
import com.google.android.gms.common.api.internal.f;
import v1.C15791l;

@C0.a
public abstract class h<A extends C11894a.b, L> {

    public final f f61153a;

    @Nullable
    public final C2320e[] f61154b;

    public final boolean f61155c;

    public final int f61156d;

    @C0.a
    public h(@NonNull f<L> fVar, @Nullable C2320e[] c2320eArr, boolean z10, int i10) {
        this.f61153a = fVar;
        this.f61154b = c2320eArr;
        this.f61155c = z10;
        this.f61156d = i10;
    }

    @C0.a
    public void a() {
        this.f61153a.a();
    }

    @Nullable
    @C0.a
    public f.a<L> b() {
        return this.f61153a.b();
    }

    @Nullable
    @C0.a
    public C2320e[] c() {
        return this.f61154b;
    }

    @C0.a
    public abstract void d(@NonNull A a10, @NonNull C15791l<Void> c15791l) throws RemoteException;

    public final int e() {
        return this.f61156d;
    }

    public final boolean f() {
        return this.f61155c;
    }

    @C0.a
    public h(@NonNull f<L> fVar) {
        this(fVar, null, false, 0);
    }

    @C0.a
    public h(@NonNull f<L> fVar, @NonNull C2320e[] c2320eArr, boolean z10) {
        this(fVar, c2320eArr, z10, 0);
    }
}
