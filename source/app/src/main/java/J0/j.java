package J0;

import G0.H;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g1.C13279a;
import g1.C13281c;

public final class j extends C13279a implements IInterface {
    public j(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService");
    }

    public final void e1(H h10) throws RemoteException {
        Parcel h11 = h();
        C13281c.c(h11, h10);
        l0(1, h11);
    }
}
