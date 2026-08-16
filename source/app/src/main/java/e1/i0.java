package e1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11882c;
import com.google.android.gms.auth.api.identity.C11886g;
import com.google.android.gms.auth.api.identity.C11887h;
import com.google.android.gms.common.api.C11895b;

public final class i0 extends C12977a implements IInterface {
    public i0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ISignInService");
    }

    public final void e1(d0 d0Var, C11887h c11887h, C11895b c11895b) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, d0Var);
        O.b(h10, c11887h);
        O.b(h10, c11895b);
        k(3, h10);
    }

    public final void f1(b0 b0Var, C11886g c11886g, String str, C11895b c11895b) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, b0Var);
        O.b(h10, c11886g);
        h10.writeString(str);
        O.b(h10, c11895b);
        k(4, h10);
    }

    public final void l0(com.google.android.gms.common.api.internal.e eVar, String str, C11895b c11895b) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, eVar);
        h10.writeString(str);
        O.b(h10, c11895b);
        k(2, h10);
    }

    public final void t(Y y10, C11882c c11882c, C11895b c11895b) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, y10);
        O.b(h10, c11882c);
        O.b(h10, c11895b);
        k(1, h10);
    }
}
