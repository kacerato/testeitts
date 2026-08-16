package G0;

import W0.d;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g1.C13279a;
import g1.C13281c;

public final class C2561d0 extends C13279a implements IInterface {
    public C2561d0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final W0.d e1(W0.d dVar, C2583o0 c2583o0) throws RemoteException {
        Parcel h10 = h();
        C13281c.d(h10, dVar);
        C13281c.c(h10, c2583o0);
        Parcel k10 = k(2, h10);
        W0.d k11 = d.a.k(k10.readStrongBinder());
        k10.recycle();
        return k11;
    }
}
