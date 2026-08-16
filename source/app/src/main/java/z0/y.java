package Z0;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import j1.Q;
import java.util.List;
import v1.C15791l;

public final class y extends Q {

    public final C15791l f30696e;

    public y(c cVar, C15791l c15791l) {
        this.f30696e = c15791l;
    }

    @Override
    public final void M0(List list) {
        this.f30696e.c(list);
    }

    @Override
    public final void f(Status status) {
        this.f30696e.d(new ApiException(status));
    }
}
