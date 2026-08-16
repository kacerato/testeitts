package e1;

import D0.C2467s;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.C11891l;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import v1.C15791l;

public final class BinderC12984h extends g0 {

    public final C15791l f84966e;

    public BinderC12984h(C12987k c12987k, C15791l c15791l) {
        this.f84966e = c15791l;
        Objects.requireNonNull(c12987k);
    }

    @Override
    public final void q0(Status status, C11891l c11891l) throws RemoteException {
        C2467s.a(status, c11891l, this.f84966e);
    }
}
