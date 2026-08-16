package com.google.android.gms.internal.auth;

import D0.C2467s;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import v1.C15791l;
import x0.C16039a;

public final class P extends F {

    public final C15791l f61645e;

    public P(Q q10, C15791l c15791l) {
        this.f61645e = c15791l;
    }

    @Override
    public final void S(String str) throws RemoteException {
        C2467s.a(str != null ? Status.f61039g : new Status(C16039a.f127859z), str, this.f61645e);
    }
}
