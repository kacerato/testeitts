package e1;

import G0.C2558c;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11881b;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import v1.C15791l;

public final class k0 extends U {

    public final C15791l f84975e;

    public k0(C12981e c12981e, C15791l c15791l) {
        this.f84975e = c15791l;
        Objects.requireNonNull(c12981e);
    }

    @Override
    public final void d1(Status status, C11881b c11881b) throws RemoteException {
        if (status.x0()) {
            this.f84975e.c(c11881b);
        } else {
            this.f84975e.b(C2558c.a(status));
        }
    }
}
