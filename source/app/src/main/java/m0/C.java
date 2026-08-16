package M0;

import B0.C2320e;
import D0.InterfaceC2438d;
import D0.InterfaceC2452k;
import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C extends AbstractC2580n {
    public C(Context context, Looper looper, C2570i c2570i, InterfaceC2438d interfaceC2438d, InterfaceC2452k interfaceC2452k) {
        super(context, looper, 308, c2570i, interfaceC2438d, interfaceC2452k);
    }

    @Override
    public final C2320e[] C() {
        return g1.v.f88031b;
    }

    @Override
    @NonNull
    public final String N() {
        return "com.google.android.gms.common.moduleinstall.internal.IModuleInstallService";
    }

    @Override
    @NonNull
    public final String O() {
        return "com.google.android.gms.chimera.container.moduleinstall.ModuleInstallService.START";
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
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.moduleinstall.internal.IModuleInstallService");
        return queryLocalInterface instanceof i ? (i) queryLocalInterface : new i(iBinder);
    }
}
