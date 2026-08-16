package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11904b;
import t0.InterfaceC15367h;

public final class C11922d extends C11904b.a {

    public final boolean f61713t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11922d(C11958m c11958m, C11894a c11894a, AbstractC11908l abstractC11908l, boolean z10) {
        super((C11894a<?>) c11894a, abstractC11908l);
        this.f61713t = z10;
    }

    @Override
    @C0.a
    public final void a(Object obj) {
        super.o((com.google.android.gms.common.api.u) obj);
    }

    @Override
    public final com.google.android.gms.common.api.u k(Status status) {
        return new C11950k(status);
    }

    @Override
    public final void w(C11894a.b bVar) throws RemoteException {
        ((InterfaceC15367h) ((C11962n) bVar).M()).L(this.f61713t);
        o(new C11950k(Status.f61039g));
    }
}
