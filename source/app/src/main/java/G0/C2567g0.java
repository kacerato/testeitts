package G0;

import G0.C2603z;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.p;
import java.util.concurrent.TimeUnit;
import v1.C15791l;

public final class C2567g0 implements p.a {

    public final com.google.android.gms.common.api.p f7403a;

    public final C15791l f7404b;

    public final C2603z.a f7405c;

    public final InterfaceC2573j0 f7406d;

    public C2567g0(com.google.android.gms.common.api.p pVar, C15791l c15791l, C2603z.a aVar, InterfaceC2573j0 interfaceC2573j0) {
        this.f7403a = pVar;
        this.f7404b = c15791l;
        this.f7405c = aVar;
        this.f7406d = interfaceC2573j0;
    }

    @Override
    public final void a(Status status) {
        if (!status.x0()) {
            this.f7404b.b(C2558c.a(status));
        } else {
            this.f7404b.c(this.f7405c.a(this.f7403a.e(0L, TimeUnit.MILLISECONDS)));
        }
    }
}
