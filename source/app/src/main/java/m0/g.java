package M0;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import g1.BinderC13280b;
import g1.C13281c;

public abstract class g extends BinderC13280b implements h {
    public g() {
        super("com.google.android.gms.common.moduleinstall.internal.IModuleInstallCallbacks");
    }

    @Override
    public final boolean e1(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            Status status = (Status) C13281c.a(parcel, Status.CREATOR);
            L0.b bVar = (L0.b) C13281c.a(parcel, L0.b.CREATOR);
            C13281c.b(parcel);
            g0(status, bVar);
        } else if (i10 == 2) {
            Status status2 = (Status) C13281c.a(parcel, Status.CREATOR);
            L0.g gVar = (L0.g) C13281c.a(parcel, L0.g.CREATOR);
            C13281c.b(parcel);
            K0(status2, gVar);
        } else if (i10 == 3) {
            Status status3 = (Status) C13281c.a(parcel, Status.CREATOR);
            L0.e eVar = (L0.e) C13281c.a(parcel, L0.e.CREATOR);
            C13281c.b(parcel);
            z0(status3, eVar);
        } else {
            if (i10 != 4) {
                return false;
            }
            Status status4 = (Status) C13281c.a(parcel, Status.CREATOR);
            C13281c.b(parcel);
            p0(status4);
        }
        return true;
    }
}
