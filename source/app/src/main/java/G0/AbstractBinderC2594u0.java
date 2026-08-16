package G0;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class AbstractBinderC2594u0 extends h1.p implements InterfaceC2591t {
    public AbstractBinderC2594u0() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            int readInt = parcel.readInt();
            IBinder readStrongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) h1.q.a(parcel, Bundle.CREATOR);
            h1.q.b(parcel);
            I0(readInt, readStrongBinder, bundle);
        } else if (i10 == 2) {
            int readInt2 = parcel.readInt();
            Bundle bundle2 = (Bundle) h1.q.a(parcel, Bundle.CREATOR);
            h1.q.b(parcel);
            a0(readInt2, bundle2);
        } else {
            if (i10 != 3) {
                return false;
            }
            int readInt3 = parcel.readInt();
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            N0 n02 = (N0) h1.q.a(parcel, N0.CREATOR);
            h1.q.b(parcel);
            E0(readInt3, readStrongBinder2, n02);
        }
        parcel2.writeNoException();
        return true;
    }
}
