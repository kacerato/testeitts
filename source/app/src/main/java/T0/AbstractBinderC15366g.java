package t0;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.auth.B;

public abstract class AbstractBinderC15366g extends B implements InterfaceC15367h {
    public static InterfaceC15367h k(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.account.IWorkAccountService");
        return queryLocalInterface instanceof InterfaceC15367h ? (InterfaceC15367h) queryLocalInterface : new C15365f(iBinder);
    }
}
