package e1;

import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractC11908l;

public final class P extends AbstractC2580n {

    public final u0.h f84950R;

    public P(Context context, Looper looper, C2570i c2570i, u0.h hVar, AbstractC11908l.b bVar, AbstractC11908l.c cVar) {
        super(context, looper, 68, c2570i, bVar, cVar);
        u0.g gVar = new u0.g(hVar == null ? u0.h.f118316e : hVar);
        gVar.a(C12999x.a());
        this.f84950R = new u0.h(gVar);
    }

    @Override
    public final Bundle I() {
        return this.f84950R.a();
    }

    @Override
    public final String N() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override
    public final String O() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    @Override
    public final int l() {
        return 12800000;
    }

    @Override
    public final IInterface z(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return queryLocalInterface instanceof Q ? (Q) queryLocalInterface : new Q(iBinder);
    }
}
