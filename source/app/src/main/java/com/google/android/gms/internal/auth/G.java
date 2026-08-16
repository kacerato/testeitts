package com.google.android.gms.internal.auth;

import B0.C2326k;
import D0.InterfaceC2438d;
import D0.InterfaceC2452k;
import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import u0.C15560b;
import u0.C15561c;

public final class G extends AbstractC2580n {

    public final Bundle f61601R;

    public G(Context context, Looper looper, C2570i c2570i, C15561c c15561c, InterfaceC2438d interfaceC2438d, InterfaceC2452k interfaceC2452k) {
        super(context, looper, 16, c2570i, interfaceC2438d, interfaceC2452k);
        this.f61601R = c15561c == null ? new Bundle() : c15561c.a();
    }

    @Override
    public final Bundle I() {
        return this.f61601R;
    }

    @Override
    public final String N() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override
    public final String O() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override
    public final boolean b0() {
        return true;
    }

    @Override
    public final boolean g() {
        C2570i s02 = s0();
        return (TextUtils.isEmpty(s02.c()) || s02.f(C15560b.f117983a).isEmpty()) ? false : true;
    }

    @Override
    public final int l() {
        return C2326k.f1252a;
    }

    @Override
    public final IInterface z(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return queryLocalInterface instanceof J ? (J) queryLocalInterface : new J(iBinder);
    }
}
