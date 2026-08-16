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

public final class T extends AbstractC2580n {

    public final Bundle f84952R;

    public T(Context context, Looper looper, com.google.android.gms.auth.api.identity.z zVar, C2570i c2570i, InterfaceC2438d interfaceC2438d, InterfaceC2452k interfaceC2452k) {
        super(context, looper, 223, c2570i, interfaceC2438d, interfaceC2452k);
        this.f84952R = new Bundle();
    }

    @Override
    public final C2320e[] C() {
        return C12998w.f85015v;
    }

    @Override
    public final Bundle I() {
        return this.f84952R;
    }

    @Override
    @NonNull
    public final String N() {
        return "com.google.android.gms.auth.api.identity.internal.ICredentialSavingService";
    }

    @Override
    @NonNull
    public final String O() {
        return "com.google.android.gms.auth.api.identity.service.credentialsaving.START";
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
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.identity.internal.ICredentialSavingService");
        return queryLocalInterface instanceof Z ? (Z) queryLocalInterface : new Z(iBinder);
    }
}
