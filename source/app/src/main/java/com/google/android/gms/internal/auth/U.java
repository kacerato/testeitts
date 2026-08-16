package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
import x0.C16039a;

public final class U extends F {

    public final V f61669e;

    public U(V v10) {
        this.f61669e = v10;
    }

    @Override
    public final void S(String str) {
        if (str != null) {
            this.f61669e.o(new Y(str));
        } else {
            this.f61669e.o(new Y(new Status(C16039a.f127859z)));
        }
    }
}
