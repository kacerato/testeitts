package Z0;

import D0.C2467s;
import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import j1.c0;
import v1.C15791l;

public final class i extends c0 {

    public final C15791l f30675e;

    public i(a aVar, C15791l c15791l) {
        this.f30675e = c15791l;
    }

    @Override
    public final void e(Status status, PendingIntent pendingIntent) throws RemoteException {
        C2467s.a(status, pendingIntent, this.f30675e);
    }
}
