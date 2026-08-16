package e1;

import B0.C2320e;
import D0.InterfaceC2438d;
import D0.InterfaceC2452k;
import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C12997v extends AbstractC2580n {

    public final Bundle f84993R;

    public C12997v(Context context, Looper looper, com.google.android.gms.auth.api.identity.M m10, C2570i c2570i, InterfaceC2438d interfaceC2438d, InterfaceC2452k interfaceC2452k) {
        super(context, looper, 212, c2570i, interfaceC2438d, interfaceC2452k);
        this.f84993R = new Bundle();
    }

    @Override
    public final C2320e[] C() {
        return C12998w.f85015v;
    }

    @Override
    public final Bundle I() {
        return this.f84993R;
    }

    @Override
    @NonNull
    public final String N() {
        return "com.google.android.gms.auth.api.identity.internal.ISignInService";
    }

    @Override
    @NonNull
    public final String O() {
        return "com.google.android.gms.auth.api.identity.service.signin.START";
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
    public final int l() {
        return 17895000;
    }

    @Override
    @Nullable
    public final IInterface z(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.identity.internal.ISignInService");
        return queryLocalInterface instanceof i0 ? (i0) queryLocalInterface : new i0(iBinder);
    }
}
