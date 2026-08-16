package d1;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class d extends C12869a implements f {
    public d(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override
    public final String P1() throws RemoteException {
        Parcel k10 = k(1, h());
        String readString = k10.readString();
        k10.recycle();
        return readString;
    }

    @Override
    public final boolean Q1() throws RemoteException {
        Parcel k10 = k(6, h());
        boolean b10 = c.b(k10);
        k10.recycle();
        return b10;
    }

    @Override
    public final boolean y(boolean z10) throws RemoteException {
        Parcel h10 = h();
        c.a(h10, true);
        Parcel k10 = k(2, h10);
        boolean b10 = c.b(k10);
        k10.recycle();
        return b10;
    }
}
