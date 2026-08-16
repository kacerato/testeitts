package com.google.android.gms.internal.auth;

import D0.C2467s;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import v1.C15791l;
import x0.C16043e;

public final class O extends F {

    public final C15791l f61644e;

    public O(Q q10, C15791l c15791l) {
        this.f61644e = c15791l;
    }

    @Override
    public final void V0(C16043e c16043e) throws RemoteException {
        C2467s.a(new Status(c16043e.f127882b), c16043e, this.f61644e);
    }
}
