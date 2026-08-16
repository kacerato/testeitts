package e1;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class c0 extends BinderC12976B implements d0 {
    public c0() {
        super("com.google.android.gms.auth.api.identity.internal.IGetSignInIntentCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Status status = (Status) O.a(parcel, Status.CREATOR);
        PendingIntent pendingIntent = (PendingIntent) O.a(parcel, PendingIntent.CREATOR);
        O.d(parcel);
        j(status, pendingIntent);
        return true;
    }
}
