package J0;

import android.os.Parcel;
import android.os.RemoteException;
import g1.BinderC13280b;
import g1.C13281c;

public abstract class k extends BinderC13280b implements l {
    public k() {
        super("com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    @Override
    public final boolean e1(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        int readInt = parcel.readInt();
        C13281c.b(parcel);
        f0(readInt);
        return true;
    }
}
