package M0;

import android.os.Parcel;
import android.os.RemoteException;
import g1.BinderC13280b;
import g1.C13281c;

public abstract class j extends BinderC13280b implements k {
    public j() {
        super("com.google.android.gms.common.moduleinstall.internal.IModuleInstallStatusListener");
    }

    @Override
    public final boolean e1(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        L0.i iVar = (L0.i) C13281c.a(parcel, L0.i.CREATOR);
        C13281c.b(parcel);
        X0(iVar);
        return true;
    }
}
