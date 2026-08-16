package com.google.android.gms.internal.auth;

import B0.C2320e;
import D0.InterfaceC2438d;
import D0.InterfaceC2452k;
import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class h3 extends AbstractC2580n {
    public h3(Context context, Looper looper, C2570i c2570i, InterfaceC2438d interfaceC2438d, InterfaceC2452k interfaceC2452k) {
        super(context, looper, 224, c2570i, interfaceC2438d, interfaceC2452k);
    }

    @Override
    public final C2320e[] C() {
        return new C2320e[]{s0.k.f109137l, s0.k.f109136k, s0.k.f109126a};
    }

    @Override
    @NonNull
    public final String N() {
        return "com.google.android.gms.auth.account.data.IGoogleAuthService";
    }

    @Override
    @NonNull
    public final String O() {
        return "com.google.android.gms.auth.account.authapi.START";
    }

    @Override
    public final boolean R() {
        return true;
    }

    @Override
    public final boolean b0() {
        return true;
    }

    @Override
    public final void e(String str) {
        Log.w("GoogleAuthSvcClientImpl", "GoogleAuthServiceClientImpl disconnected with reason: ".concat(String.valueOf(str)));
        super.e(str);
    }

    @Override
    public final int l() {
        return 17895000;
    }

    @Override
    @Nullable
    public final IInterface z(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.account.data.IGoogleAuthService");
        return queryLocalInterface instanceof o3 ? (o3) queryLocalInterface : new o3(iBinder);
    }
}
