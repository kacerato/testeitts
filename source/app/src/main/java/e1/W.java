package e1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.AuthorizationRequest;
import com.google.android.gms.auth.api.identity.ClearTokenRequest;
import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
import com.google.android.gms.common.api.C11895b;

public final class W extends C12977a implements IInterface {
    public W(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.IAuthorizationService");
    }

    public final void e1(com.google.android.gms.common.api.internal.e eVar, ClearTokenRequest clearTokenRequest, C11895b c11895b) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, eVar);
        O.b(h10, clearTokenRequest);
        O.b(h10, c11895b);
        k(4, h10);
    }

    public final void l0(com.google.android.gms.common.api.internal.e eVar, RevokeAccessRequest revokeAccessRequest, C11895b c11895b) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, eVar);
        O.b(h10, revokeAccessRequest);
        O.b(h10, c11895b);
        k(3, h10);
    }

    public final void t(V v10, AuthorizationRequest authorizationRequest, C11895b c11895b) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, v10);
        O.b(h10, authorizationRequest);
        O.b(h10, c11895b);
        k(1, h10);
    }
}
