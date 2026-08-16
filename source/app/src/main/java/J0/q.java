package J0;

import B0.C2320e;
import D0.InterfaceC2438d;
import D0.InterfaceC2452k;
import G0.AbstractC2580n;
import G0.C2570i;
import G0.K;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import g1.C13284f;

public final class q extends AbstractC2580n {

    public final K f10182R;

    public q(Context context, Looper looper, C2570i c2570i, K k10, InterfaceC2438d interfaceC2438d, InterfaceC2452k interfaceC2452k) {
        super(context, looper, 270, c2570i, interfaceC2438d, interfaceC2452k);
        this.f10182R = k10;
    }

    @Override
    public final C2320e[] C() {
        return C13284f.f88006b;
    }

    @Override
    public final Bundle I() {
        return this.f10182R.b();
    }

    @Override
    @NonNull
    public final String N() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override
    @NonNull
    public final String O() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override
    public final boolean R() {
        return true;
    }

    @Override
    public final int l() {
        return 203400000;
    }

    @Override
    @Nullable
    public final IInterface z(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return queryLocalInterface instanceof j ? (j) queryLocalInterface : new j(iBinder);
    }
}
