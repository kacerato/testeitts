package G0;

import android.os.IBinder;
import android.os.RemoteException;
import h1.C13407a;

public final class a1 extends C13407a implements InterfaceC2589s {
    public a1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICancelToken");
    }

    @Override
    public final void cancel() throws RemoteException {
        t(2, l0());
    }
}
