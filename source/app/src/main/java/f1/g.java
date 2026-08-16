package f1;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class g extends e implements h {
    public g() {
        super("com.google.android.gms.auth.api.phone.internal.IAutofillPermissionStateCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Status status = (Status) f.a(parcel, Status.CREATOR);
        int readInt = parcel.readInt();
        f.b(parcel);
        R0(status, readInt);
        return true;
    }
}
