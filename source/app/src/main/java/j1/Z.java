package j1;

import a1.C3539g;
import a1.C3540h;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class Z extends C13777a implements IInterface {
    public Z(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e1(Y y10, C3540h c3540h) throws RemoteException {
        Parcel h10 = h();
        int i10 = N.f92490b;
        h10.writeStrongBinder(y10);
        N.d(h10, c3540h);
        k(2, h10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f1(P p10) throws RemoteException {
        Parcel h10 = h();
        int i10 = N.f92490b;
        h10.writeStrongBinder(p10);
        k(3, h10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void l0(Y y10, C3539g c3539g) throws RemoteException {
        Parcel h10 = h();
        int i10 = N.f92490b;
        h10.writeStrongBinder(y10);
        N.d(h10, c3539g);
        k(1, h10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t(S s10, String str) throws RemoteException {
        Parcel h10 = h();
        int i10 = N.f92490b;
        h10.writeStrongBinder(s10);
        h10.writeString(str);
        k(4, h10);
    }
}
