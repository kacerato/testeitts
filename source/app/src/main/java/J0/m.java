package J0;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g1.C13279a;
import g1.C13281c;

public final class m extends C13279a implements IInterface {
    public m(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.ICommonService");
    }

    public final void e1(l lVar) throws RemoteException {
        Parcel h10 = h();
        C13281c.d(h10, lVar);
        l0(1, h10);
    }
}
