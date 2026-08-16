package j1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class e0 extends C13777a implements IInterface {
    public e0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fido.fido2.internal.regular.IFido2AppService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e1(P p10) throws RemoteException {
        Parcel h10 = h();
        int i10 = N.f92490b;
        h10.writeStrongBinder(p10);
        k(3, h10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void l0(d0 d0Var, a1.r rVar) throws RemoteException {
        Parcel h10 = h();
        int i10 = N.f92490b;
        h10.writeStrongBinder(d0Var);
        N.d(h10, rVar);
        k(2, h10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t(d0 d0Var, com.google.android.gms.fido.fido2.api.common.d dVar) throws RemoteException {
        Parcel h10 = h();
        int i10 = N.f92490b;
        h10.writeStrongBinder(d0Var);
        N.d(h10, dVar);
        k(1, h10);
    }
}
