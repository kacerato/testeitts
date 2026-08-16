package f1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class k extends C13177a implements IInterface {
    public k(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
    }

    public final void e1(com.google.android.gms.common.api.internal.e eVar) throws RemoteException {
        Parcel h10 = h();
        f.c(h10, eVar);
        k(3, h10);
    }

    public final void f1(com.google.android.gms.common.api.internal.e eVar) throws RemoteException {
        Parcel h10 = h();
        f.c(h10, eVar);
        k(6, h10);
    }

    public final void g1(m mVar) throws RemoteException {
        Parcel h10 = h();
        f.c(h10, mVar);
        k(1, h10);
    }

    public final void h1(String str, m mVar) throws RemoteException {
        Parcel h10 = h();
        h10.writeString(str);
        f.c(h10, mVar);
        k(2, h10);
    }

    public final void l0(String str, j jVar) throws RemoteException {
        Parcel h10 = h();
        h10.writeString(str);
        f.c(h10, jVar);
        k(5, h10);
    }

    public final void t(h hVar) throws RemoteException {
        Parcel h10 = h();
        f.c(h10, hVar);
        k(4, h10);
    }
}
