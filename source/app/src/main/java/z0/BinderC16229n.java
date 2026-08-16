package z0;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

public final class BinderC16229n extends BinderC16220e {

    public final C16230o f130529e;

    public BinderC16229n(C16230o c16230o) {
        Objects.requireNonNull(c16230o);
        this.f130529e = c16230o;
    }

    @Override
    public final void o0(Status status) throws RemoteException {
        this.f130529e.o(status);
    }
}
