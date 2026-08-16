package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11904b;
import u0.C15560b;

public abstract class K extends C11904b.a {
    public K(AbstractC11908l abstractC11908l) {
        super(C15560b.f117983a, abstractC11908l);
    }

    public abstract void C(Context context, J j10) throws RemoteException;

    @Override
    @C0.a
    public final void a(Object obj) {
        super.o((com.google.android.gms.common.api.u) obj);
    }

    @Override
    public final com.google.android.gms.common.api.u k(Status status) {
        return new X(status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void w(C11894a.b bVar) throws RemoteException {
        G g10 = (G) bVar;
        C(g10.G(), (J) g10.M());
    }
}
