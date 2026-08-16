package G0;

import W0.d;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import h1.C13407a;

public final class b1 extends C13407a implements InterfaceC2590s0 {
    public b1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override
    public final int P1() throws RemoteException {
        Parcel h10 = h(2, l0());
        int readInt = h10.readInt();
        h10.recycle();
        return readInt;
    }

    @Override
    public final W0.d Q1() throws RemoteException {
        Parcel h10 = h(1, l0());
        W0.d k10 = d.a.k(h10.readStrongBinder());
        h10.recycle();
        return k10;
    }
}
