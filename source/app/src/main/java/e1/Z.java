package e1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11890k;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.common.api.C11895b;

public final class Z extends C12977a implements IInterface {
    public Z(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ICredentialSavingService");
    }

    public final void l0(h0 h0Var, C11890k c11890k, C11895b c11895b) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, h0Var);
        O.b(h10, c11890k);
        O.b(h10, c11895b);
        k(2, h10);
    }

    public final void t(f0 f0Var, SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest, C11895b c11895b) throws RemoteException {
        Parcel h10 = h();
        O.c(h10, f0Var);
        O.b(h10, saveAccountLinkingTokenRequest);
        O.b(h10, c11895b);
        k(1, h10);
    }
}
