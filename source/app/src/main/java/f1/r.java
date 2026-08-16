package f1;

import D0.C2467s;
import G0.C2558c;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.e;
import v1.C15791l;

public final class r extends e.a {

    public final C15791l f85963e;

    public r(u uVar, C15791l c15791l) {
        this.f85963e = c15791l;
    }

    @Override
    public final void Z(Status status) {
        if (status.b0() == 6) {
            this.f85963e.d(C2558c.a(status));
        } else {
            C2467s.b(status, this.f85963e);
        }
    }
}
