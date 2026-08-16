package G0;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import h1.C13407a;

public final class C2592t0 extends C13407a implements InterfaceC2591t {
    public C2592t0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override
    public final void E0(int i10, IBinder iBinder, N0 n02) throws RemoteException {
        throw null;
    }

    @Override
    public final void I0(int i10, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel l02 = l0();
        l02.writeInt(i10);
        l02.writeStrongBinder(iBinder);
        h1.q.c(l02, bundle);
        k(1, l02);
    }

    @Override
    public final void a0(int i10, Bundle bundle) throws RemoteException {
        throw null;
    }
}
