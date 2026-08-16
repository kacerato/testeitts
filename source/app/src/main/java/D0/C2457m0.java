package D0;

import B0.C2318c;
import B0.C2323h;
import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.CancellationException;
import v1.AbstractC15790k;
import v1.C15791l;

public final class C2457m0 extends U0 {

    public C15791l f4683g;

    public C2457m0(InterfaceC2448i interfaceC2448i) {
        super(interfaceC2448i, C2323h.x());
        this.f4683g = new C15791l();
        this.f4660b.c("GmsAvailabilityHelper", this);
    }

    public static C2457m0 u(@NonNull Activity activity) {
        InterfaceC2448i d10 = C2446h.d(activity);
        C2457m0 c2457m0 = (C2457m0) d10.a("GmsAvailabilityHelper", C2457m0.class);
        if (c2457m0 == null) {
            return new C2457m0(d10);
        }
        if (c2457m0.f4683g.a().u()) {
            c2457m0.f4683g = new C15791l();
        }
        return c2457m0;
    }

    @Override
    public final void h() {
        super.h();
        this.f4683g.d(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    @Override
    public final void n(C2318c c2318c, int i10) {
        String t10 = c2318c.t();
        if (t10 == null) {
            t10 = "Error connecting to Google Play services";
        }
        this.f4683g.b(new ApiException(new Status(c2318c, t10, c2318c.n())));
    }

    @Override
    public final void o() {
        Activity b10 = this.f4660b.b();
        if (b10 == null) {
            this.f4683g.d(new ApiException(new Status(8)));
            return;
        }
        int j10 = this.f4615f.j(b10);
        if (j10 == 0) {
            this.f4683g.e(null);
        } else {
            if (this.f4683g.a().u()) {
                return;
            }
            t(new C2318c(j10, null), 0);
        }
    }

    public final AbstractC15790k v() {
        return this.f4683g.a();
    }
}
