package t1;

import G0.r;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g1.C13279a;
import g1.C13281c;

public final class g extends C13279a implements IInterface {
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    public final void e1(int i10) throws RemoteException {
        Parcel h10 = h();
        h10.writeInt(i10);
        t(7, h10);
    }

    public final void f1(r rVar, int i10, boolean z10) throws RemoteException {
        Parcel h10 = h();
        C13281c.d(h10, rVar);
        h10.writeInt(i10);
        h10.writeInt(z10 ? 1 : 0);
        t(9, h10);
    }

    public final void g1(j jVar, InterfaceC15375f interfaceC15375f) throws RemoteException {
        Parcel h10 = h();
        C13281c.c(h10, jVar);
        C13281c.d(h10, interfaceC15375f);
        t(12, h10);
    }
}
