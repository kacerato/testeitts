package e1;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11889j;
import com.google.android.gms.common.api.Status;

public abstract class e0 extends BinderC12976B implements f0 {
    public e0() {
        super("com.google.android.gms.auth.api.identity.internal.ISaveAccountLinkingTokenCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Status status = (Status) O.a(parcel, Status.CREATOR);
        C11889j c11889j = (C11889j) O.a(parcel, C11889j.CREATOR);
        O.d(parcel);
        B(status, c11889j);
        return true;
    }
}
