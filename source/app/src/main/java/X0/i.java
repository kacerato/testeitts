package X0;

import W0.d;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import h1.C13407a;
import h1.q;

public final class i extends C13407a implements IInterface {
    public i(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final int e1() throws RemoteException {
        Parcel h10 = h(6, l0());
        int readInt = h10.readInt();
        h10.recycle();
        return readInt;
    }

    public final int f1(W0.d dVar, String str, boolean z10) throws RemoteException {
        Parcel l02 = l0();
        q.e(l02, dVar);
        l02.writeString(str);
        l02.writeInt(z10 ? 1 : 0);
        Parcel h10 = h(3, l02);
        int readInt = h10.readInt();
        h10.recycle();
        return readInt;
    }

    public final int g1(W0.d dVar, String str, boolean z10) throws RemoteException {
        Parcel l02 = l0();
        q.e(l02, dVar);
        l02.writeString(str);
        l02.writeInt(z10 ? 1 : 0);
        Parcel h10 = h(5, l02);
        int readInt = h10.readInt();
        h10.recycle();
        return readInt;
    }

    public final W0.d h1(W0.d dVar, String str, int i10) throws RemoteException {
        Parcel l02 = l0();
        q.e(l02, dVar);
        l02.writeString(str);
        l02.writeInt(i10);
        Parcel h10 = h(2, l02);
        W0.d k10 = d.a.k(h10.readStrongBinder());
        h10.recycle();
        return k10;
    }

    public final W0.d i1(W0.d dVar, String str, int i10, W0.d dVar2) throws RemoteException {
        Parcel l02 = l0();
        q.e(l02, dVar);
        l02.writeString(str);
        l02.writeInt(i10);
        q.e(l02, dVar2);
        Parcel h10 = h(8, l02);
        W0.d k10 = d.a.k(h10.readStrongBinder());
        h10.recycle();
        return k10;
    }

    public final W0.d j1(W0.d dVar, String str, int i10) throws RemoteException {
        Parcel l02 = l0();
        q.e(l02, dVar);
        l02.writeString(str);
        l02.writeInt(i10);
        Parcel h10 = h(4, l02);
        W0.d k10 = d.a.k(h10.readStrongBinder());
        h10.recycle();
        return k10;
    }

    public final W0.d k1(W0.d dVar, String str, boolean z10, long j10) throws RemoteException {
        Parcel l02 = l0();
        q.e(l02, dVar);
        l02.writeString(str);
        l02.writeInt(z10 ? 1 : 0);
        l02.writeLong(j10);
        Parcel h10 = h(7, l02);
        W0.d k10 = d.a.k(h10.readStrongBinder());
        h10.recycle();
        return k10;
    }
}
