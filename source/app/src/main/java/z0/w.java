package Z0;

import D0.C2467s;
import android.app.PendingIntent;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import j1.U;
import j1.X;
import v1.C15791l;

public final class w extends X {

    public final C15791l f30694e;

    public w(c cVar, C15791l c15791l) {
        this.f30694e = c15791l;
    }

    @Override
    public final void e(Status status, @Nullable PendingIntent pendingIntent) {
        C2467s.a(status, new U(pendingIntent), this.f30694e);
    }
}
