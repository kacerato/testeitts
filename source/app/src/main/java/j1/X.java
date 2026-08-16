package j1;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class X extends B implements Y {
    public X() {
        super("com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedCallbacks");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Status status = (Status) N.a(parcel, Status.CREATOR);
        PendingIntent pendingIntent = (PendingIntent) N.a(parcel, PendingIntent.CREATOR);
        N.c(parcel);
        e(status, pendingIntent);
        return true;
    }
}
