package Z0;

import D0.C2467s;
import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import j1.c0;
import v1.C15791l;

public final class j extends c0 {

    public final C15791l f30676e;

    public j(a aVar, C15791l c15791l) {
        this.f30676e = c15791l;
    }

    @Override
    public final void e(Status status, PendingIntent pendingIntent) throws RemoteException {
        C2467s.a(status, pendingIntent, this.f30676e);
    }
}
