package com.google.android.gms.common.api.internal;

import D0.InterfaceC2458n;
import android.os.RemoteException;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.internal.f;
import com.google.android.gms.common.api.internal.i;
import v1.C15791l;

public final class z extends k {

    public final i.a f61263b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(i.a aVar, f.a aVar2) {
        super(aVar2);
        this.f61263b = aVar;
    }

    @Override
    public final void b(C11894a.b bVar, C15791l<Boolean> c15791l) throws RemoteException {
        InterfaceC2458n interfaceC2458n;
        interfaceC2458n = this.f61263b.f61161b;
        interfaceC2458n.accept(bVar, c15791l);
    }
}
