package e1;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11891l;
import com.google.android.gms.common.api.Status;

public abstract class g0 extends BinderC12976B implements h0 {
    public g0() {
        super("com.google.android.gms.auth.api.identity.internal.ISavePasswordCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Status status = (Status) O.a(parcel, Status.CREATOR);
        C11891l c11891l = (C11891l) O.a(parcel, C11891l.CREATOR);
        O.d(parcel);
        q0(status, c11891l);
        return true;
    }
}
