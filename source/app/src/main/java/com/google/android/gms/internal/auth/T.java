package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11908l;
import x0.C16042d;

public final class T extends K {

    public final C16042d f61668t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T(W w10, AbstractC11908l abstractC11908l, C16042d c16042d) {
        super(abstractC11908l);
        this.f61668t = c16042d;
    }

    @Override
    public final void C(Context context, J j10) throws RemoteException {
        j10.e1(new S(this), this.f61668t);
    }
}
