package e1;

import G0.C2558c;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.e;
import java.util.Objects;
import v1.C15791l;

public final class m0 extends e.a {

    public final C15791l f84978e;

    public m0(C12981e c12981e, C15791l c15791l) {
        this.f84978e = c15791l;
        Objects.requireNonNull(c12981e);
    }

    @Override
    public final void Z(Status status) throws RemoteException {
        if (status.x0()) {
            this.f84978e.c(null);
        } else {
            this.f84978e.b(C2558c.a(status));
        }
    }
}
