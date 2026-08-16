package e1;

import D0.C2467s;
import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import v1.C15791l;

public final class BinderC12992p extends a0 {

    public final C15791l f84981e;

    public BinderC12992p(C12996u c12996u, C15791l c15791l) {
        this.f84981e = c15791l;
        Objects.requireNonNull(c12996u);
    }

    @Override
    public final void j(Status status, PendingIntent pendingIntent) {
        C2467s.a(status, pendingIntent, this.f84981e);
    }
}
