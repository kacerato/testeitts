package e1;

import G0.C2558c;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11889j;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import v1.C15791l;

public final class BinderC12983g extends e0 {

    public final C15791l f84965e;

    public BinderC12983g(C12987k c12987k, C15791l c15791l) {
        this.f84965e = c15791l;
        Objects.requireNonNull(c12987k);
    }

    @Override
    public final void B(Status status, C11889j c11889j) throws RemoteException {
        if (status.x0()) {
            this.f84965e.c(c11889j);
        } else {
            this.f84965e.b(C2558c.a(status));
        }
    }
}
