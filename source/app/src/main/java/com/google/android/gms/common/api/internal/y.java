package com.google.android.gms.common.api.internal;

import B0.C2320e;
import D0.InterfaceC2458n;
import android.os.RemoteException;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.internal.i;
import v1.C15791l;

public final class y extends h {

    public final i.a f61262e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(i.a aVar, f fVar, C2320e[] c2320eArr, boolean z10, int i10) {
        super(fVar, c2320eArr, z10, i10);
        this.f61262e = aVar;
    }

    @Override
    public final void d(C11894a.b bVar, C15791l<Void> c15791l) throws RemoteException {
        InterfaceC2458n interfaceC2458n;
        interfaceC2458n = this.f61262e.f61160a;
        interfaceC2458n.accept(bVar, c15791l);
    }
}
