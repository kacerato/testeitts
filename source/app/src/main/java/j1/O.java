package j1;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class O extends B implements P {
    public O() {
        super("com.google.android.gms.fido.fido2.api.IBooleanCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            int i12 = N.f92490b;
            int readInt = parcel.readInt();
            N.c(parcel);
            C(readInt != 0);
        } else {
            if (i10 != 2) {
                return false;
            }
            Status status = (Status) N.a(parcel, Status.CREATOR);
            N.c(parcel);
            f(status);
        }
        parcel2.writeNoException();
        return true;
    }
}
