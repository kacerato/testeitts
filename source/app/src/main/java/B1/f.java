package b1;

import D0.C2467s;
import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import j1.f0;
import j1.g0;
import v1.C15791l;

public final class f extends g0 {

    public final C15791l f32817e;

    public f(C3828a c3828a, C15791l c15791l) {
        this.f32817e = c15791l;
    }

    @Override
    public final void e(Status status, PendingIntent pendingIntent) throws RemoteException {
        C2467s.a(status, new f0(pendingIntent), this.f32817e);
    }
}
