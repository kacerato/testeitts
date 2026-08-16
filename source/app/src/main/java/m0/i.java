package M0;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g1.C13279a;
import g1.C13281c;

public final class i extends C13279a implements IInterface {
    public i(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.moduleinstall.internal.IModuleInstallService");
    }

    public final void e1(h hVar, C2812a c2812a) throws RemoteException {
        Parcel h10 = h();
        C13281c.d(h10, hVar);
        C13281c.c(h10, c2812a);
        t(1, h10);
    }

    public final void f1(h hVar, C2812a c2812a) throws RemoteException {
        Parcel h10 = h();
        C13281c.d(h10, hVar);
        C13281c.c(h10, c2812a);
        t(3, h10);
    }

    public final void g1(h hVar, C2812a c2812a, k kVar) throws RemoteException {
        Parcel h10 = h();
        C13281c.d(h10, hVar);
        C13281c.c(h10, c2812a);
        C13281c.d(h10, kVar);
        t(2, h10);
    }

    public final void h1(com.google.android.gms.common.api.internal.e eVar, C2812a c2812a) throws RemoteException {
        Parcel h10 = h();
        C13281c.d(h10, eVar);
        C13281c.c(h10, c2812a);
        t(4, h10);
    }

    public final void i1(com.google.android.gms.common.api.internal.e eVar, k kVar) throws RemoteException {
        Parcel h10 = h();
        C13281c.d(h10, eVar);
        C13281c.d(h10, kVar);
        t(6, h10);
    }
}
