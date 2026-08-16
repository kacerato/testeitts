package Z0;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import j1.O;
import v1.C15791l;

public final class x extends O {

    public final C15791l f30695e;

    public x(c cVar, C15791l c15791l) {
        this.f30695e = c15791l;
    }

    @Override
    public final void C(boolean z10) {
        this.f30695e.c(Boolean.valueOf(z10));
    }

    @Override
    public final void f(Status status) {
        this.f30695e.d(new ApiException(status));
    }
}
