package G0;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class c1 extends h1.p implements InterfaceC2590s0 {
    public c1() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    public static InterfaceC2590s0 k(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof InterfaceC2590s0 ? (InterfaceC2590s0) queryLocalInterface : new b1(iBinder);
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            W0.d Q12 = Q1();
            parcel2.writeNoException();
            h1.q.e(parcel2, Q12);
        } else {
            if (i10 != 2) {
                return false;
            }
            int P12 = P1();
            parcel2.writeNoException();
            parcel2.writeInt(P12);
        }
        return true;
    }
}
