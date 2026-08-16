package f1;

import B0.C2320e;
import B0.C2326k;
import D0.InterfaceC2438d;
import D0.InterfaceC2452k;
import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

public final class z extends AbstractC2580n {
    public z(Context context, Looper looper, C2570i c2570i, InterfaceC2438d interfaceC2438d, InterfaceC2452k interfaceC2452k) {
        super(context, looper, 126, c2570i, interfaceC2438d, interfaceC2452k);
    }

    @Override
    public final C2320e[] C() {
        return d.f85957e;
    }

    @Override
    public final String N() {
        return "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService";
    }

    @Override
    public final String O() {
        return "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START";
    }

    @Override
    public final boolean b0() {
        return true;
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
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        return queryLocalInterface instanceof k ? (k) queryLocalInterface : new k(iBinder);
    }
}
