package e1;

import D0.C2467s;
import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import v1.C15791l;

public final class BinderC12991o extends c0 {

    public final C15791l f84980e;

    public BinderC12991o(C12996u c12996u, C15791l c15791l) {
        this.f84980e = c15791l;
        Objects.requireNonNull(c12996u);
    }

    @Override
    public final void j(Status status, PendingIntent pendingIntent) throws RemoteException {
        C2467s.a(status, pendingIntent, this.f84980e);
    }
}
