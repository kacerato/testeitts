package e1;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11883d;
import com.google.android.gms.common.api.Status;

public abstract class X extends BinderC12976B implements Y {
    public X() {
        super("com.google.android.gms.auth.api.identity.internal.IBeginSignInCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Status status = (Status) O.a(parcel, Status.CREATOR);
        C11883d c11883d = (C11883d) O.a(parcel, C11883d.CREATOR);
        O.d(parcel);
        A0(status, c11883d);
        return true;
    }
}
