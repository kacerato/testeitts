package e1;

import D0.C2467s;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11883d;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import v1.C15791l;

public final class BinderC12989m extends X {

    public final C15791l f84977e;

    public BinderC12989m(C12996u c12996u, C15791l c15791l) {
        this.f84977e = c15791l;
        Objects.requireNonNull(c12996u);
    }

    @Override
    public final void A0(Status status, C11883d c11883d) throws RemoteException {
        C2467s.a(status, c11883d, this.f84977e);
    }
}
