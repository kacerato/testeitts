package X0;

import W0.d;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import h1.C13407a;
import h1.q;

public final class j extends C13407a implements IInterface {
    public j(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final W0.d e1(W0.d dVar, String str, int i10, W0.d dVar2) throws RemoteException {
        Parcel l02 = l0();
        q.e(l02, dVar);
        l02.writeString(str);
        l02.writeInt(i10);
        q.e(l02, dVar2);
        Parcel h10 = h(2, l02);
        W0.d k10 = d.a.k(h10.readStrongBinder());
        h10.recycle();
        return k10;
    }

    public final W0.d f1(W0.d dVar, String str, int i10, W0.d dVar2) throws RemoteException {
        Parcel l02 = l0();
        q.e(l02, dVar);
        l02.writeString(str);
        l02.writeInt(i10);
        q.e(l02, dVar2);
        Parcel h10 = h(3, l02);
        W0.d k10 = d.a.k(h10.readStrongBinder());
        h10.recycle();
        return k10;
    }
}
