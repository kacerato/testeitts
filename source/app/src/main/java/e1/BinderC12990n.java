package e1;

import D0.C2467s;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.e;
import java.util.Objects;
import v1.C15791l;

public final class BinderC12990n extends e.a {

    public final C15791l f84979e;

    public BinderC12990n(C12996u c12996u, C15791l c15791l) {
        this.f84979e = c15791l;
        Objects.requireNonNull(c12996u);
    }

    @Override
    public final void Z(Status status) throws RemoteException {
        C2467s.b(status, this.f84979e);
    }
}
