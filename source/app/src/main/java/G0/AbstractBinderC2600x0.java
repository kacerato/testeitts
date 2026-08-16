package G0;

import android.os.IBinder;
import android.os.IInterface;

public abstract class AbstractBinderC2600x0 extends h1.p implements InterfaceC2602y0 {
    public static InterfaceC2602y0 k(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return queryLocalInterface instanceof InterfaceC2602y0 ? (InterfaceC2602y0) queryLocalInterface : new C2598w0(iBinder);
    }
}
