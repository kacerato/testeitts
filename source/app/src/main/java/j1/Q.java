package j1;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;

public abstract class Q extends B implements S {
    public Q() {
        super("com.google.android.gms.fido.fido2.api.ICredentialListCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            ArrayList b10 = N.b(parcel);
            N.c(parcel);
            M0(b10);
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
