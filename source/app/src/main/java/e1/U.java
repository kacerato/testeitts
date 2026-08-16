package e1;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11881b;
import com.google.android.gms.common.api.Status;

public abstract class U extends BinderC12976B implements V {
    public U() {
        super("com.google.android.gms.auth.api.identity.internal.IAuthorizationCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Status status = (Status) O.a(parcel, Status.CREATOR);
        C11881b c11881b = (C11881b) O.a(parcel, C11881b.CREATOR);
        O.d(parcel);
        d1(status, c11881b);
        return true;
    }
}
