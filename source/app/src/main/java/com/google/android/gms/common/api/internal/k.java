package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.C11894a.b;
import com.google.android.gms.common.api.internal.f;
import v1.C15791l;

@C0.a
public abstract class k<A extends C11894a.b, L> {

    public final f.a f61168a;

    @C0.a
    public k(@NonNull f.a<L> aVar) {
        this.f61168a = aVar;
    }

    @NonNull
    @C0.a
    public f.a<L> a() {
        return this.f61168a;
    }

    @C0.a
    public abstract void b(@NonNull A a10, @NonNull C15791l<Boolean> c15791l) throws RemoteException;
}
