package f1;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class i extends e implements j {
    public i() {
        super("com.google.android.gms.auth.api.phone.internal.IOngoingSmsRequestCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Status status = (Status) f.a(parcel, Status.CREATOR);
        boolean z10 = parcel.readInt() != 0;
        f.b(parcel);
        O0(status, z10);
        return true;
    }
}
