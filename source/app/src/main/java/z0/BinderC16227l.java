package z0;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

public final class BinderC16227l extends BinderC16220e {

    public final C16228m f130528e;

    public BinderC16227l(C16228m c16228m) {
        Objects.requireNonNull(c16228m);
        this.f130528e = c16228m;
    }

    @Override
    public final void j0(Status status) throws RemoteException {
        this.f130528e.o(status);
    }
}
