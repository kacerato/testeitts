package Z0;

import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import j1.O;
import v1.C15791l;

public final class m extends O {

    public final C15791l f30679e;

    public m(a aVar, C15791l c15791l) {
        this.f30679e = c15791l;
    }

    @Override
    public final void C(boolean z10) throws RemoteException {
        this.f30679e.c(Boolean.valueOf(z10));
    }

    @Override
    public final void f(Status status) throws RemoteException {
        this.f30679e.d(new ApiException(status));
    }
}
